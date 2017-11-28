diff --git a/Makefile b/Makefile
index 2659987..a9e4d61 100644
--- a/Makefile
+++ b/Makefile
@@ -1,6 +1,6 @@
 VERSION = 3
 PATCHLEVEL = 4
-SUBLEVEL = 36
+SUBLEVEL = 37
 EXTRAVERSION =
 NAME = Saber-toothed Squirrel
 
diff --git a/arch/powerpc/kernel/cputable.c b/arch/powerpc/kernel/cputable.c
index 455faa3..31a3dd0 100644
--- a/arch/powerpc/kernel/cputable.c
+++ b/arch/powerpc/kernel/cputable.c
@@ -269,7 +269,7 @@ static struct cpu_spec __initdata cpu_specs[] = {
 		.cpu_features		= CPU_FTRS_PPC970,
 		.cpu_user_features	= COMMON_USER_POWER4 |
 			PPC_FEATURE_HAS_ALTIVEC_COMP,
-		.mmu_features		= MMU_FTR_HPTE_TABLE,
+		.mmu_features		= MMU_FTRS_PPC970,
 		.icache_bsize		= 128,
 		.dcache_bsize		= 128,
 		.num_pmcs		= 8,
diff --git a/arch/powerpc/mm/hash_utils_64.c b/arch/powerpc/mm/hash_utils_64.c
index 377e5cb..15972e2 100644
--- a/arch/powerpc/mm/hash_utils_64.c
+++ b/arch/powerpc/mm/hash_utils_64.c
@@ -759,6 +759,8 @@ void __init early_init_mmu(void)
 	/* Initialize stab / SLB management */
 	if (mmu_has_feature(MMU_FTR_SLB))
 		slb_initialize();
+	else
+		stab_initialize(get_paca()->stab_real);
 }
 
 #ifdef CONFIG_SMP
diff --git a/arch/s390/include/asm/tlbflush.h b/arch/s390/include/asm/tlbflush.h
index 1d8648c..8743029 100644
--- a/arch/s390/include/asm/tlbflush.h
+++ b/arch/s390/include/asm/tlbflush.h
@@ -74,8 +74,6 @@ static inline void __tlb_flush_idte(unsigned long asce)
 
 static inline void __tlb_flush_mm(struct mm_struct * mm)
 {
-	if (unlikely(cpumask_empty(mm_cpumask(mm))))
-		return;
 	/*
 	 * If the machine has IDTE we prefer to do a per mm flush
 	 * on all cpus instead of doing a local flush if the mm
diff --git a/arch/s390/kernel/entry.S b/arch/s390/kernel/entry.S
index 74ee563..009518c 100644
--- a/arch/s390/kernel/entry.S
+++ b/arch/s390/kernel/entry.S
@@ -669,7 +669,8 @@ ENTRY(mcck_int_handler)
 	UPDATE_VTIME %r14,%r15,__LC_MCCK_ENTER_TIMER
 mcck_skip:
 	SWITCH_ASYNC __LC_GPREGS_SAVE_AREA+32,__LC_PANIC_STACK,PAGE_SHIFT
-	mvc	__PT_R0(64,%r11),__LC_GPREGS_SAVE_AREA
+	stm	%r0,%r7,__PT_R0(%r11)
+	mvc	__PT_R8(32,%r11),__LC_GPREGS_SAVE_AREA+32
 	stm	%r8,%r9,__PT_PSW(%r11)
 	xc	__SF_BACKCHAIN(4,%r15),__SF_BACKCHAIN(%r15)
 	l	%r1,BASED(.Ldo_machine_check)
diff --git a/arch/s390/kernel/entry64.S b/arch/s390/kernel/entry64.S
index 4e1c292..b6f3e7c 100644
--- a/arch/s390/kernel/entry64.S
+++ b/arch/s390/kernel/entry64.S
@@ -689,8 +689,9 @@ ENTRY(mcck_int_handler)
 	UPDATE_VTIME %r14,__LC_MCCK_ENTER_TIMER
 	LAST_BREAK %r14
 mcck_skip:
-	lghi	%r14,__LC_GPREGS_SAVE_AREA
-	mvc	__PT_R0(128,%r11),0(%r14)
+	lghi	%r14,__LC_GPREGS_SAVE_AREA+64
+	stmg	%r0,%r7,__PT_R0(%r11)
+	mvc	__PT_R8(64,%r11),0(%r14)
 	stmg	%r8,%r9,__PT_PSW(%r11)
 	xc	__SF_BACKCHAIN(8,%r15),__SF_BACKCHAIN(%r15)
 	lgr	%r2,%r11		# pass pointer to pt_regs
diff --git a/arch/x86/kernel/cpu/perf_event_intel_ds.c b/arch/x86/kernel/cpu/perf_event_intel_ds.c
index 7f64df1..fca48c4 100644
--- a/arch/x86/kernel/cpu/perf_event_intel_ds.c
+++ b/arch/x86/kernel/cpu/perf_event_intel_ds.c
@@ -723,3 +723,13 @@ void intel_ds_init(void)
 		}
 	}
 }
+
+void perf_restore_debug_store(void)
+{
+	struct debug_store *ds = __this_cpu_read(cpu_hw_events.ds);
+
+	if (!x86_pmu.bts && !x86_pmu.pebs)
+		return;
+
+	wrmsrl(MSR_IA32_DS_AREA, (unsigned long)ds);
+}
diff --git a/arch/x86/power/cpu.c b/arch/x86/power/cpu.c
index 218cdb1..fcbaac60 100644
--- a/arch/x86/power/cpu.c
+++ b/arch/x86/power/cpu.c
@@ -11,6 +11,7 @@
 #include <linux/suspend.h>
 #include <linux/export.h>
 #include <linux/smp.h>
+#include <linux/perf_event.h>
 
 #include <asm/pgtable.h>
 #include <asm/proto.h>
@@ -227,6 +228,7 @@ static void __restore_processor_state(struct saved_context *ctxt)
 	do_fpu_end();
 	x86_platform.restore_sched_clock_state();
 	mtrr_bp_restore();
+	perf_restore_debug_store();
 }
 
 /* Needed by apm.c */
diff --git a/drivers/block/loop.c b/drivers/block/loop.c
index bbca966..5e3be05 100644
--- a/drivers/block/loop.c
+++ b/drivers/block/loop.c
@@ -1263,11 +1263,9 @@ static int loop_set_capacity(struct loop_device *lo, struct block_device *bdev)
 	/* the width of sector_t may be narrow for bit-shift */
 	sz = sec;
 	sz <<= 9;
-	mutex_lock(&bdev->bd_mutex);
 	bd_set_size(bdev, sz);
 	/* let user-space know about the new size */
 	kobject_uevent(&disk_to_dev(bdev->bd_disk)->kobj, KOBJ_CHANGE);
-	mutex_unlock(&bdev->bd_mutex);
 
  out:
 	return err;
@@ -1837,11 +1835,15 @@ static int __init loop_init(void)
 		max_part = (1UL << part_shift) - 1;
 	}
 
-	if ((1UL << part_shift) > DISK_MAX_PARTS)
-		return -EINVAL;
+	if ((1UL << part_shift) > DISK_MAX_PARTS) {
+		err = -EINVAL;
+		goto misc_out;
+	}
 
-	if (max_loop > 1UL << (MINORBITS - part_shift))
-		return -EINVAL;
+	if (max_loop > 1UL << (MINORBITS - part_shift)) {
+		err = -EINVAL;
+		goto misc_out;
+	}
 
 	/*
 	 * If max_loop is specified, create that many devices upfront.
@@ -1859,8 +1861,10 @@ static int __init loop_init(void)
 		range = 1UL << MINORBITS;
 	}
 
-	if (register_blkdev(LOOP_MAJOR, "loop"))
-		return -EIO;
+	if (register_blkdev(LOOP_MAJOR, "loop")) {
+		err = -EIO;
+		goto misc_out;
+	}
 
 	blk_register_region(MKDEV(LOOP_MAJOR, 0), range,
 				  THIS_MODULE, loop_probe, NULL, NULL);
@@ -1873,6 +1877,10 @@ static int __init loop_init(void)
 
 	printk(KERN_INFO "loop: module loaded\n");
 	return 0;
+
+misc_out:
+	misc_deregister(&loop_misc);
+	return err;
 }
 
 static int loop_exit_cb(int id, void *ptr, void *data)
diff --git a/drivers/char/hw_random/virtio-rng.c b/drivers/char/hw_random/virtio-rng.c
index 723725b..171380b 100644
--- a/drivers/char/hw_random/virtio-rng.c
+++ b/drivers/char/hw_random/virtio-rng.c
@@ -89,14 +89,22 @@ static int virtrng_probe(struct virtio_device *vdev)
 {
 	int err;
 
+	if (vq) {
+		/* We only support one device for now */
+		return -EBUSY;
+	}
 	/* We expect a single virtqueue. */
 	vq = virtio_find_single_vq(vdev, random_recv_done, "input");
-	if (IS_ERR(vq))
-		return PTR_ERR(vq);
+	if (IS_ERR(vq)) {
+		err = PTR_ERR(vq);
+		vq = NULL;
+		return err;
+	}
 
 	err = hwrng_register(&virtio_hwrng);
 	if (err) {
 		vdev->config->del_vqs(vdev);
+		vq = NULL;
 		return err;
 	}
 
@@ -108,6 +116,7 @@ static void __devexit virtrng_remove(struct virtio_device *vdev)
 	vdev->config->reset(vdev);
 	hwrng_unregister(&virtio_hwrng);
 	vdev->config->del_vqs(vdev);
+	vq = NULL;
 }
 
 static struct virtio_device_id id_table[] = {
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index a230a93..eb33945 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1186,6 +1186,11 @@ out:
 	case 0:
 	case -ERESTARTSYS:
 	case -EINTR:
+	case -EBUSY:
+		/*
+		 * EBUSY is ok: this just means that another thread
+		 * already did the job.
+		 */
 		return VM_FAULT_NOPAGE;
 	case -ENOMEM:
 		return VM_FAULT_OOM;
diff --git a/drivers/gpu/drm/i915/intel_display.c b/drivers/gpu/drm/i915/intel_display.c
index 67f6db5..7ccf896 100644
--- a/drivers/gpu/drm/i915/intel_display.c
+++ b/drivers/gpu/drm/i915/intel_display.c
@@ -8364,7 +8364,7 @@ void gen6_enable_rps(struct drm_i915_private *dev_priv)
 	I915_WRITE(GEN6_RC_SLEEP, 0);
 	I915_WRITE(GEN6_RC1e_THRESHOLD, 1000);
 	I915_WRITE(GEN6_RC6_THRESHOLD, 50000);
-	I915_WRITE(GEN6_RC6p_THRESHOLD, 100000);
+	I915_WRITE(GEN6_RC6p_THRESHOLD, 150000);
 	I915_WRITE(GEN6_RC6pp_THRESHOLD, 64000); /* unused */
 
 	rc6_mode = intel_enable_rc6(dev_priv->dev);
diff --git a/drivers/hwmon/lineage-pem.c b/drivers/hwmon/lineage-pem.c
index d264937..22249f4 100644
--- a/drivers/hwmon/lineage-pem.c
+++ b/drivers/hwmon/lineage-pem.c
@@ -421,6 +421,7 @@ static struct attribute *pem_input_attributes[] = {
 	&sensor_dev_attr_in2_input.dev_attr.attr,
 	&sensor_dev_attr_curr1_input.dev_attr.attr,
 	&sensor_dev_attr_power1_input.dev_attr.attr,
+	NULL
 };
 
 static const struct attribute_group pem_input_group = {
@@ -431,6 +432,7 @@ static struct attribute *pem_fan_attributes[] = {
 	&sensor_dev_attr_fan1_input.dev_attr.attr,
 	&sensor_dev_attr_fan2_input.dev_attr.attr,
 	&sensor_dev_attr_fan3_input.dev_attr.attr,
+	NULL
 };
 
 static const struct attribute_group pem_fan_group = {
diff --git a/drivers/hwmon/pmbus/ltc2978.c b/drivers/hwmon/pmbus/ltc2978.c
index a58de38..6d61307 100644
--- a/drivers/hwmon/pmbus/ltc2978.c
+++ b/drivers/hwmon/pmbus/ltc2978.c
@@ -59,7 +59,7 @@ enum chips { ltc2978, ltc3880 };
 struct ltc2978_data {
 	enum chips id;
 	int vin_min, vin_max;
-	int temp_min, temp_max;
+	int temp_min, temp_max[2];
 	int vout_min[8], vout_max[8];
 	int iout_max[2];
 	int temp2_max;
@@ -113,9 +113,10 @@ static int ltc2978_read_word_data_common(struct i2c_client *client, int page,
 		ret = pmbus_read_word_data(client, page,
 					   LTC2978_MFR_TEMPERATURE_PEAK);
 		if (ret >= 0) {
-			if (lin11_to_val(ret) > lin11_to_val(data->temp_max))
-				data->temp_max = ret;
-			ret = data->temp_max;
+			if (lin11_to_val(ret)
+			    > lin11_to_val(data->temp_max[page]))
+				data->temp_max[page] = ret;
+			ret = data->temp_max[page];
 		}
 		break;
 	case PMBUS_VIRT_RESET_VOUT_HISTORY:
@@ -266,7 +267,7 @@ static int ltc2978_write_word_data(struct i2c_client *client, int page,
 		break;
 	case PMBUS_VIRT_RESET_TEMP_HISTORY:
 		data->temp_min = 0x7bff;
-		data->temp_max = 0x7c00;
+		data->temp_max[page] = 0x7c00;
 		ret = ltc2978_clear_peaks(client, page, data->id);
 		break;
 	default:
@@ -323,7 +324,8 @@ static int ltc2978_probe(struct i2c_client *client,
 	data->vin_min = 0x7bff;
 	data->vin_max = 0x7c00;
 	data->temp_min = 0x7bff;
-	data->temp_max = 0x7c00;
+	for (i = 0; i < ARRAY_SIZE(data->temp_max); i++)
+		data->temp_max[i] = 0x7c00;
 	data->temp2_max = 0x7c00;
 
 	switch (data->id) {
diff --git a/drivers/hwmon/sht15.c b/drivers/hwmon/sht15.c
index eb01802..c689630 100644
--- a/drivers/hwmon/sht15.c
+++ b/drivers/hwmon/sht15.c
@@ -930,7 +930,7 @@ static int __devinit sht15_probe(struct platform_device *pdev)
 		if (ret != 0) {
 			dev_err(&pdev->dev,
 				"failed to enable regulator: %d\n", ret);
-			return ret;
+			goto err_free_data;
 		}
 
 		/*
diff --git a/drivers/net/macvlan.c b/drivers/net/macvlan.c
index 025367a..956a5ed 100644
--- a/drivers/net/macvlan.c
+++ b/drivers/net/macvlan.c
@@ -584,6 +584,7 @@ void macvlan_common_setup(struct net_device *dev)
 	ether_setup(dev);
 
 	dev->priv_flags	       &= ~(IFF_XMIT_DST_RELEASE | IFF_TX_SKB_SHARING);
+	dev->priv_flags	       |= IFF_UNICAST_FLT;
 	dev->netdev_ops		= &macvlan_netdev_ops;
 	dev->destructor		= free_netdev;
 	dev->header_ops		= &macvlan_hard_header_ops,
diff --git a/drivers/net/tun.c b/drivers/net/tun.c
index 147b628..c896b8f 100644
--- a/drivers/net/tun.c
+++ b/drivers/net/tun.c
@@ -417,6 +417,8 @@ static netdev_tx_t tun_net_xmit(struct sk_buff *skb, struct net_device *dev)
 	 * for indefinite time. */
 	skb_orphan(skb);
 
+	nf_reset(skb);
+
 	/* Enqueue packet */
 	skb_queue_tail(&tun->socket.sk->sk_receive_queue, skb);
 
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 8739454..628545d 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -718,8 +718,6 @@ static int vt6656_suspend(struct usb_interface *intf, pm_message_t message)
 	if (device->flags & DEVICE_FLAGS_OPENED)
 		device_close(device->dev);
 
-	usb_put_dev(interface_to_usbdev(intf));
-
 	return 0;
 }
 
@@ -730,8 +728,6 @@ static int vt6656_resume(struct usb_interface *intf)
 	if (!device || !device->dev)
 		return -ENODEV;
 
-	usb_get_dev(interface_to_usbdev(intf));
-
 	if (!(device->flags & DEVICE_FLAGS_OPENED))
 		device_open(device->dev);
 
diff --git a/drivers/tty/pty.c b/drivers/tty/pty.c
index eeae7fa..636c539 100644
--- a/drivers/tty/pty.c
+++ b/drivers/tty/pty.c
@@ -47,7 +47,6 @@ static void pty_close(struct tty_struct *tty, struct file *filp)
 	tty->packet = 0;
 	if (!tty->link)
 		return;
-	tty->link->packet = 0;
 	set_bit(TTY_OTHER_CLOSED, &tty->link->flags);
 	wake_up_interruptible(&tty->link->read_wait);
 	wake_up_interruptible(&tty->link->write_wait);
diff --git a/drivers/tty/serial/8250/8250_pci.c b/drivers/tty/serial/8250/8250_pci.c
index 40747fe..ffba1ef 100644
--- a/drivers/tty/serial/8250/8250_pci.c
+++ b/drivers/tty/serial/8250/8250_pci.c
@@ -4086,6 +4086,10 @@ static struct pci_device_id serial_pci_tbl[] = {
 		PCI_VENDOR_ID_IBM, 0x0299,
 		0, 0, pbn_b0_bt_2_115200 },
 
+	{	PCI_VENDOR_ID_NETMOS, PCI_DEVICE_ID_NETMOS_9835,
+		0x1000, 0x0012,
+		0, 0, pbn_b0_bt_2_115200 },
+
 	{	PCI_VENDOR_ID_NETMOS, PCI_DEVICE_ID_NETMOS_9901,
 		0xA000, 0x1000,
 		0, 0, pbn_b0_1_115200 },
diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index 070b442..3b2eaad 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -197,7 +197,7 @@ config SERIAL_SAMSUNG_UARTS_4
 config SERIAL_SAMSUNG_UARTS
 	int
 	depends on ARM && PLAT_SAMSUNG
-	default 6 if ARCH_S5P6450
+	default 6 if CPU_S5P6450
 	default 4 if SERIAL_SAMSUNG_UARTS_4 || CPU_S3C2416
 	default 3
 	help
diff --git a/drivers/usb/class/cdc-wdm.c b/drivers/usb/class/cdc-wdm.c
index 524fe24..9dd51f7 100644
--- a/drivers/usb/class/cdc-wdm.c
+++ b/drivers/usb/class/cdc-wdm.c
@@ -81,6 +81,7 @@ MODULE_DEVICE_TABLE (usb, wdm_ids);
 #define WDM_RESPONDING		7
 #define WDM_SUSPENDING		8
 #define WDM_RESETTING		9
+#define WDM_OVERFLOW		10
 
 #define WDM_MAX			16
 
@@ -180,6 +181,7 @@ static void wdm_in_callback(struct urb *urb)
 {
 	struct wdm_device *desc = urb->context;
 	int status = urb->status;
+	int length = urb->actual_length;
 
 	spin_lock(&desc->iuspin);
 	clear_bit(WDM_RESPONDING, &desc->flags);
@@ -210,9 +212,17 @@ static void wdm_in_callback(struct urb *urb)
 	}
 
 	desc->rerr = status;
-	desc->reslength = urb->actual_length;
-	memmove(desc->ubuf + desc->length, desc->inbuf, desc->reslength);
-	desc->length += desc->reslength;
+	if (length + desc->length > desc->wMaxCommand) {
+		/* The buffer would overflow */
+		set_bit(WDM_OVERFLOW, &desc->flags);
+	} else {
+		/* we may already be in overflow */
+		if (!test_bit(WDM_OVERFLOW, &desc->flags)) {
+			memmove(desc->ubuf + desc->length, desc->inbuf, length);
+			desc->length += length;
+			desc->reslength = length;
+		}
+	}
 skip_error:
 	wake_up(&desc->wait);
 
@@ -457,6 +467,11 @@ retry:
 			rv = -ENODEV;
 			goto err;
 		}
+		if (test_bit(WDM_OVERFLOW, &desc->flags)) {
+			clear_bit(WDM_OVERFLOW, &desc->flags);
+			rv = -ENOBUFS;
+			goto err;
+		}
 		i++;
 		if (file->f_flags & O_NONBLOCK) {
 			if (!test_bit(WDM_READ, &desc->flags)) {
@@ -500,6 +515,7 @@ retry:
 			spin_unlock_irq(&desc->iuspin);
 			goto retry;
 		}
+
 		if (!desc->reslength) { /* zero length read */
 			dev_dbg(&desc->intf->dev, "%s: zero length - clearing WDM_READ\n", __func__);
 			clear_bit(WDM_READ, &desc->flags);
@@ -1023,6 +1039,7 @@ static int wdm_post_reset(struct usb_interface *intf)
 	struct wdm_device *desc = wdm_find_device(intf);
 	int rv;
 
+	clear_bit(WDM_OVERFLOW, &desc->flags);
 	clear_bit(WDM_RESETTING, &desc->flags);
 	rv = recover_from_urb_loss(desc);
 	mutex_unlock(&desc->wlock);
diff --git a/drivers/usb/host/ehci-q.c b/drivers/usb/host/ehci-q.c
index 7261e8f..e305689 100644
--- a/drivers/usb/host/ehci-q.c
+++ b/drivers/usb/host/ehci-q.c
@@ -135,7 +135,7 @@ qh_refresh (struct ehci_hcd *ehci, struct ehci_qh *qh)
 		 * qtd is updated in qh_completions(). Update the QH
 		 * overlay here.
 		 */
-		if (cpu_to_hc32(ehci, qtd->qtd_dma) == qh->hw->hw_current) {
+		if (qh->hw->hw_token & ACTIVE_BIT(ehci)) {
 			qh->hw->hw_qtd_next = qtd->hw_next;
 			qtd = NULL;
 		}
@@ -459,11 +459,19 @@ qh_completions (struct ehci_hcd *ehci, struct ehci_qh *qh)
 			else if (last_status == -EINPROGRESS && !urb->unlinked)
 				continue;
 
-			/* qh unlinked; token in overlay may be most current */
-			if (state == QH_STATE_IDLE
-					&& cpu_to_hc32(ehci, qtd->qtd_dma)
-						== hw->hw_current) {
+			/*
+			 * If this was the active qtd when the qh was unlinked
+			 * and the overlay's token is active, then the overlay
+			 * hasn't been written back to the qtd yet so use its
+			 * token instead of the qtd's.  After the qtd is
+			 * processed and removed, the overlay won't be valid
+			 * any more.
+			 */
+			if (state == QH_STATE_IDLE &&
+					qh->qtd_list.next == &qtd->qtd_list &&
+					(hw->hw_token & ACTIVE_BIT(ehci))) {
 				token = hc32_to_cpu(ehci, hw->hw_token);
+				hw->hw_token &= ~ACTIVE_BIT(ehci);
 
 				/* An unlink may leave an incomplete
 				 * async transaction in the TT buffer.
diff --git a/drivers/usb/serial/cp210x.c b/drivers/usb/serial/cp210x.c
index f38a278..d9811e4 100644
--- a/drivers/usb/serial/cp210x.c
+++ b/drivers/usb/serial/cp210x.c
@@ -91,6 +91,7 @@ static const struct usb_device_id id_table[] = {
 	{ USB_DEVICE(0x10C4, 0x813F) }, /* Tams Master Easy Control */
 	{ USB_DEVICE(0x10C4, 0x814A) }, /* West Mountain Radio RIGblaster P&P */
 	{ USB_DEVICE(0x10C4, 0x814B) }, /* West Mountain Radio RIGtalk */
+	{ USB_DEVICE(0x2405, 0x0003) }, /* West Mountain Radio RIGblaster Advantage */
 	{ USB_DEVICE(0x10C4, 0x8156) }, /* B&G H3000 link cable */
 	{ USB_DEVICE(0x10C4, 0x815E) }, /* Helicomm IP-Link 1220-DVM */
 	{ USB_DEVICE(0x10C4, 0x815F) }, /* Timewave HamLinkUSB */
@@ -156,6 +157,25 @@ static const struct usb_device_id id_table[] = {
 	{ USB_DEVICE(0x1BE3, 0x07A6) }, /* WAGO 750-923 USB Service Cable */
 	{ USB_DEVICE(0x1E29, 0x0102) }, /* Festo CPX-USB */
 	{ USB_DEVICE(0x1E29, 0x0501) }, /* Festo CMSP */
+	{ USB_DEVICE(0x1FB9, 0x0100) }, /* Lake Shore Model 121 Current Source */
+	{ USB_DEVICE(0x1FB9, 0x0200) }, /* Lake Shore Model 218A Temperature Monitor */
+	{ USB_DEVICE(0x1FB9, 0x0201) }, /* Lake Shore Model 219 Temperature Monitor */
+	{ USB_DEVICE(0x1FB9, 0x0202) }, /* Lake Shore Model 233 Temperature Transmitter */
+	{ USB_DEVICE(0x1FB9, 0x0203) }, /* Lake Shore Model 235 Temperature Transmitter */
+	{ USB_DEVICE(0x1FB9, 0x0300) }, /* Lake Shore Model 335 Temperature Controller */
+	{ USB_DEVICE(0x1FB9, 0x0301) }, /* Lake Shore Model 336 Temperature Controller */
+	{ USB_DEVICE(0x1FB9, 0x0302) }, /* Lake Shore Model 350 Temperature Controller */
+	{ USB_DEVICE(0x1FB9, 0x0303) }, /* Lake Shore Model 371 AC Bridge */
+	{ USB_DEVICE(0x1FB9, 0x0400) }, /* Lake Shore Model 411 Handheld Gaussmeter */
+	{ USB_DEVICE(0x1FB9, 0x0401) }, /* Lake Shore Model 425 Gaussmeter */
+	{ USB_DEVICE(0x1FB9, 0x0402) }, /* Lake Shore Model 455A Gaussmeter */
+	{ USB_DEVICE(0x1FB9, 0x0403) }, /* Lake Shore Model 475A Gaussmeter */
+	{ USB_DEVICE(0x1FB9, 0x0404) }, /* Lake Shore Model 465 Three Axis Gaussmeter */
+	{ USB_DEVICE(0x1FB9, 0x0600) }, /* Lake Shore Model 625A Superconducting MPS */
+	{ USB_DEVICE(0x1FB9, 0x0601) }, /* Lake Shore Model 642A Magnet Power Supply */
+	{ USB_DEVICE(0x1FB9, 0x0602) }, /* Lake Shore Model 648 Magnet Power Supply */
+	{ USB_DEVICE(0x1FB9, 0x0700) }, /* Lake Shore Model 737 VSM Controller */
+	{ USB_DEVICE(0x1FB9, 0x0701) }, /* Lake Shore Model 776 Hall Matrix */
 	{ USB_DEVICE(0x3195, 0xF190) }, /* Link Instruments MSO-19 */
 	{ USB_DEVICE(0x3195, 0xF280) }, /* Link Instruments MSO-28 */
 	{ USB_DEVICE(0x3195, 0xF281) }, /* Link Instruments MSO-28 */
diff --git a/drivers/usb/serial/option.c b/drivers/usb/serial/option.c
index 539247b..78c4774 100644
--- a/drivers/usb/serial/option.c
+++ b/drivers/usb/serial/option.c
@@ -341,6 +341,8 @@ static void option_instat_callback(struct urb *urb);
 #define CINTERION_PRODUCT_EU3_E			0x0051
 #define CINTERION_PRODUCT_EU3_P			0x0052
 #define CINTERION_PRODUCT_PH8			0x0053
+#define CINTERION_PRODUCT_AH6			0x0055
+#define CINTERION_PRODUCT_PLS8			0x0060
 
 /* Olivetti products */
 #define OLIVETTI_VENDOR_ID			0x0b3c
@@ -579,6 +581,7 @@ static const struct usb_device_id option_ids[] = {
 	{ USB_DEVICE(QUANTA_VENDOR_ID, 0xea42),
 		.driver_info = (kernel_ulong_t)&net_intf4_blacklist },
 	{ USB_DEVICE_AND_INTERFACE_INFO(HUAWEI_VENDOR_ID, 0x1c05, USB_CLASS_COMM, 0x02, 0xff) },
+	{ USB_DEVICE_AND_INTERFACE_INFO(HUAWEI_VENDOR_ID, 0x1c1f, USB_CLASS_COMM, 0x02, 0xff) },
 	{ USB_DEVICE_AND_INTERFACE_INFO(HUAWEI_VENDOR_ID, 0x1c23, USB_CLASS_COMM, 0x02, 0xff) },
 	{ USB_DEVICE_AND_INTERFACE_INFO(HUAWEI_VENDOR_ID, HUAWEI_PRODUCT_E173, 0xff, 0xff, 0xff),
 		.driver_info = (kernel_ulong_t) &net_intf1_blacklist },
@@ -1260,6 +1263,8 @@ static const struct usb_device_id option_ids[] = {
 	{ USB_DEVICE(CINTERION_VENDOR_ID, CINTERION_PRODUCT_EU3_E) },
 	{ USB_DEVICE(CINTERION_VENDOR_ID, CINTERION_PRODUCT_EU3_P) },
 	{ USB_DEVICE(CINTERION_VENDOR_ID, CINTERION_PRODUCT_PH8) },
+	{ USB_DEVICE(CINTERION_VENDOR_ID, CINTERION_PRODUCT_AH6) },
+	{ USB_DEVICE(CINTERION_VENDOR_ID, CINTERION_PRODUCT_PLS8) },
 	{ USB_DEVICE(CINTERION_VENDOR_ID, CINTERION_PRODUCT_HC28_MDM) }, 
 	{ USB_DEVICE(CINTERION_VENDOR_ID, CINTERION_PRODUCT_HC28_MDMNET) },
 	{ USB_DEVICE(SIEMENS_VENDOR_ID, CINTERION_PRODUCT_HC25_MDM) },
diff --git a/drivers/usb/serial/qcaux.c b/drivers/usb/serial/qcaux.c
index b223381..018f103 100644
--- a/drivers/usb/serial/qcaux.c
+++ b/drivers/usb/serial/qcaux.c
@@ -69,6 +69,7 @@ static struct usb_device_id id_table[] = {
 	{ USB_VENDOR_AND_INTERFACE_INFO(UTSTARCOM_VENDOR_ID, 0xff, 0xfd, 0xff) },  /* NMEA */
 	{ USB_VENDOR_AND_INTERFACE_INFO(UTSTARCOM_VENDOR_ID, 0xff, 0xfe, 0xff) },  /* WMC */
 	{ USB_VENDOR_AND_INTERFACE_INFO(UTSTARCOM_VENDOR_ID, 0xff, 0xff, 0xff) },  /* DIAG */
+	{ USB_DEVICE_AND_INTERFACE_INFO(0x1fac, 0x0151, 0xff, 0xff, 0xff) },
 	{ },
 };
 MODULE_DEVICE_TABLE(usb, id_table);
diff --git a/drivers/usb/storage/initializers.c b/drivers/usb/storage/initializers.c
index 7ab9046..105d900 100644
--- a/drivers/usb/storage/initializers.c
+++ b/drivers/usb/storage/initializers.c
@@ -92,8 +92,8 @@ int usb_stor_ucr61s2b_init(struct us_data *us)
 	return 0;
 }
 
-/* This places the HUAWEI usb dongles in multi-port mode */
-static int usb_stor_huawei_feature_init(struct us_data *us)
+/* This places the HUAWEI E220 devices in multi-port mode */
+int usb_stor_huawei_e220_init(struct us_data *us)
 {
 	int result;
 
@@ -104,75 +104,3 @@ static int usb_stor_huawei_feature_init(struct us_data *us)
 	US_DEBUGP("Huawei mode set result is %d\n", result);
 	return 0;
 }
-
-/*
- * It will send a scsi switch command called rewind' to huawei dongle.
- * When the dongle receives this command at the first time,
- * it will reboot immediately. After rebooted, it will ignore this command.
- * So it is  unnecessary to read its response.
- */
-static int usb_stor_huawei_scsi_init(struct us_data *us)
-{
-	int result = 0;
-	int act_len = 0;
-	struct bulk_cb_wrap *bcbw = (struct bulk_cb_wrap *) us->iobuf;
-	char rewind_cmd[] = {0x11, 0x06, 0x20, 0x00, 0x00, 0x01, 0x01, 0x00,
-			0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
-
-	bcbw->Signature = cpu_to_le32(US_BULK_CB_SIGN);
-	bcbw->Tag = 0;
-	bcbw->DataTransferLength = 0;
-	bcbw->Flags = bcbw->Lun = 0;
-	bcbw->Length = sizeof(rewind_cmd);
-	memset(bcbw->CDB, 0, sizeof(bcbw->CDB));
-	memcpy(bcbw->CDB, rewind_cmd, sizeof(rewind_cmd));
-
-	result = usb_stor_bulk_transfer_buf(us, us->send_bulk_pipe, bcbw,
-					US_BULK_CB_WRAP_LEN, &act_len);
-	US_DEBUGP("transfer actual length=%d, result=%d\n", act_len, result);
-	return result;
-}
-
-/*
- * It tries to find the supported Huawei USB dongles.
- * In Huawei, they assign the following product IDs
- * for all of their mobile broadband dongles,
- * including the new dongles in the future.
- * So if the product ID is not included in this list,
- * it means it is not Huawei's mobile broadband dongles.
- */
-static int usb_stor_huawei_dongles_pid(struct us_data *us)
-{
-	struct usb_interface_descriptor *idesc;
-	int idProduct;
-
-	idesc = &us->pusb_intf->cur_altsetting->desc;
-	idProduct = le16_to_cpu(us->pusb_dev->descriptor.idProduct);
-	/* The first port is CDROM,
-	 * means the dongle in the single port mode,
-	 * and a switch command is required to be sent. */
-	if (idesc && idesc->bInterfaceNumber == 0) {
-		if ((idProduct == 0x1001)
-			|| (idProduct == 0x1003)
-			|| (idProduct == 0x1004)
-			|| (idProduct >= 0x1401 && idProduct <= 0x1500)
-			|| (idProduct >= 0x1505 && idProduct <= 0x1600)
-			|| (idProduct >= 0x1c02 && idProduct <= 0x2202)) {
-			return 1;
-		}
-	}
-	return 0;
-}
-
-int usb_stor_huawei_init(struct us_data *us)
-{
-	int result = 0;
-
-	if (usb_stor_huawei_dongles_pid(us)) {
-		if (le16_to_cpu(us->pusb_dev->descriptor.idProduct) >= 0x1446)
-			result = usb_stor_huawei_scsi_init(us);
-		else
-			result = usb_stor_huawei_feature_init(us);
-	}
-	return result;
-}
diff --git a/drivers/usb/storage/initializers.h b/drivers/usb/storage/initializers.h
index 5376d4f..529327f 100644
--- a/drivers/usb/storage/initializers.h
+++ b/drivers/usb/storage/initializers.h
@@ -46,5 +46,5 @@ int usb_stor_euscsi_init(struct us_data *us);
  * flash reader */
 int usb_stor_ucr61s2b_init(struct us_data *us);
 
-/* This places the HUAWEI usb dongles in multi-port mode */
-int usb_stor_huawei_init(struct us_data *us);
+/* This places the HUAWEI E220 devices in multi-port mode */
+int usb_stor_huawei_e220_init(struct us_data *us);
diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index 27858f9..5ffa116 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1515,10 +1515,335 @@ UNUSUAL_DEV(  0x1210, 0x0003, 0x0100, 0x0100,
 /* Reported by fangxiaozhi <huananhu@huawei.com>
  * This brings the HUAWEI data card devices into multi-port mode
  */
-UNUSUAL_VENDOR_INTF(0x12d1, 0x08, 0x06, 0x50,
+UNUSUAL_DEV(  0x12d1, 0x1001, 0x0000, 0x0000,
 		"HUAWEI MOBILE",
 		"Mass Storage",
-		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_init,
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1003, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1004, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1401, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1402, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1403, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1404, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1405, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1406, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1407, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1408, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1409, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x140A, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x140B, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x140C, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x140D, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x140E, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x140F, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1410, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1411, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1412, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1413, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1414, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1415, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1416, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1417, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1418, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1419, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x141A, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x141B, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x141C, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x141D, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x141E, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x141F, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1420, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1421, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1422, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1423, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1424, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1425, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1426, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1427, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1428, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1429, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x142A, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x142B, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x142C, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x142D, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x142E, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x142F, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1430, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1431, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1432, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1433, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1434, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1435, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1436, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1437, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1438, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x1439, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x143A, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x143B, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x143C, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x143D, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x143E, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
+		0),
+UNUSUAL_DEV(  0x12d1, 0x143F, 0x0000, 0x0000,
+		"HUAWEI MOBILE",
+		"Mass Storage",
+		USB_SC_DEVICE, USB_PR_DEVICE, usb_stor_huawei_e220_init,
 		0),
 
 /* Reported by Vilius Bilinkevicius <vilisas AT xxx DOT lt) */
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index d99505b..78506eb 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -422,17 +422,22 @@ static int atmel_lcdfb_check_var(struct fb_var_screeninfo *var,
 			= var->bits_per_pixel;
 		break;
 	case 16:
+		/* Older SOCs use IBGR:555 rather than BGR:565. */
+		if (sinfo->have_intensity_bit)
+			var->green.length = 5;
+		else
+			var->green.length = 6;
+
 		if (sinfo->lcd_wiring_mode == ATMEL_LCDC_WIRING_RGB) {
-			/* RGB:565 mode */
-			var->red.offset = 11;
+			/* RGB:5X5 mode */
+			var->red.offset = var->green.length + 5;
 			var->blue.offset = 0;
 		} else {
-			/* BGR:565 mode */
+			/* BGR:5X5 mode */
 			var->red.offset = 0;
-			var->blue.offset = 11;
+			var->blue.offset = var->green.length + 5;
 		}
 		var->green.offset = 5;
-		var->green.length = 6;
 		var->red.length = var->blue.length = 5;
 		break;
 	case 32:
@@ -679,8 +684,7 @@ static int atmel_lcdfb_setcolreg(unsigned int regno, unsigned int red,
 
 	case FB_VISUAL_PSEUDOCOLOR:
 		if (regno < 256) {
-			if (cpu_is_at91sam9261() || cpu_is_at91sam9263()
-			    || cpu_is_at91sam9rl()) {
+			if (sinfo->have_intensity_bit) {
 				/* old style I+BGR:555 */
 				val  = ((red   >> 11) & 0x001f);
 				val |= ((green >>  6) & 0x03e0);
@@ -870,6 +874,10 @@ static int __init atmel_lcdfb_probe(struct platform_device *pdev)
 	}
 	sinfo->info = info;
 	sinfo->pdev = pdev;
+	if (cpu_is_at91sam9261() || cpu_is_at91sam9263() ||
+							cpu_is_at91sam9rl()) {
+		sinfo->have_intensity_bit = true;
+	}
 
 	strcpy(info->fix.id, sinfo->pdev->name);
 	info->flags = ATMEL_LCDFB_FBINFO_DEFAULT;
diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
index 9761950..c9bc19f 100644
--- a/drivers/w1/w1.c
+++ b/drivers/w1/w1.c
@@ -928,7 +928,8 @@ void w1_search(struct w1_master *dev, u8 search_type, w1_slave_found_callback cb
 			tmp64 = (triplet_ret >> 2);
 			rn |= (tmp64 << i);
 
-			if (kthread_should_stop()) {
+			/* ensure we're called from kthread and not by netlink callback */
+			if (!dev->priv && kthread_should_stop()) {
 				dev_dbg(&dev->dev, "Abort w1_search\n");
 				return;
 			}
diff --git a/drivers/xen/xen-pciback/pciback_ops.c b/drivers/xen/xen-pciback/pciback_ops.c
index 97f5d26..b6df20a 100644
--- a/drivers/xen/xen-pciback/pciback_ops.c
+++ b/drivers/xen/xen-pciback/pciback_ops.c
@@ -113,7 +113,8 @@ void xen_pcibk_reset_device(struct pci_dev *dev)
 		if (dev->msi_enabled)
 			pci_disable_msi(dev);
 #endif
-		pci_disable_device(dev);
+		if (pci_is_enabled(dev))
+			pci_disable_device(dev);
 
 		pci_write_config_word(dev, PCI_COMMAND, 0);
 
diff --git a/fs/block_dev.c b/fs/block_dev.c
index b3be92c..a6e1e06 100644
--- a/fs/block_dev.c
+++ b/fs/block_dev.c
@@ -1086,7 +1086,9 @@ void bd_set_size(struct block_device *bdev, loff_t size)
 {
 	unsigned bsize = bdev_logical_block_size(bdev);
 
-	bdev->bd_inode->i_size = size;
+	mutex_lock(&bdev->bd_inode->i_mutex);
+	i_size_write(bdev->bd_inode, size);
+	mutex_unlock(&bdev->bd_inode->i_mutex);
 	while (bsize < PAGE_CACHE_SIZE) {
 		if (size & bsize)
 			break;
diff --git a/fs/btrfs/volumes.c b/fs/btrfs/volumes.c
index 3ad7ee9..06744f1 100644
--- a/fs/btrfs/volumes.c
+++ b/fs/btrfs/volumes.c
@@ -591,6 +591,12 @@ int btrfs_close_devices(struct btrfs_fs_devices *fs_devices)
 		__btrfs_close_devices(fs_devices);
 		free_fs_devices(fs_devices);
 	}
+	/*
+	 * Wait for rcu kworkers under __btrfs_close_devices
+	 * to finish all blkdev_puts so device is really
+	 * free when umount is done.
+	 */
+	rcu_barrier();
 	return ret;
 }
 
diff --git a/fs/ext3/super.c b/fs/ext3/super.c
index cf0b592..ef4c812 100644
--- a/fs/ext3/super.c
+++ b/fs/ext3/super.c
@@ -364,7 +364,7 @@ static struct block_device *ext3_blkdev_get(dev_t dev, struct super_block *sb)
 	return bdev;
 
 fail:
-	ext3_msg(sb, "error: failed to open journal device %s: %ld",
+	ext3_msg(sb, KERN_ERR, "error: failed to open journal device %s: %ld",
 		__bdevname(dev, b), PTR_ERR(bdev));
 
 	return NULL;
@@ -891,7 +891,7 @@ static ext3_fsblk_t get_sb_block(void **data, struct super_block *sb)
 	/*todo: use simple_strtoll with >32bit ext3 */
 	sb_block = simple_strtoul(options, &options, 0);
 	if (*options && *options != ',') {
-		ext3_msg(sb, "error: invalid sb specification: %s",
+		ext3_msg(sb, KERN_ERR, "error: invalid sb specification: %s",
 		       (char *) *data);
 		return 1;
 	}
diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
index f18d537..8e9a069 100644
--- a/include/linux/perf_event.h
+++ b/include/linux/perf_event.h
@@ -1330,6 +1330,12 @@ static inline void perf_event_disable(struct perf_event *event)		{ }
 static inline void perf_event_task_tick(void)				{ }
 #endif
 
+#if defined(CONFIG_PERF_EVENTS) && defined(CONFIG_CPU_SUP_INTEL)
+extern void perf_restore_debug_store(void);
+#else
+static inline void perf_restore_debug_store(void)			{ }
+#endif
+
 #define perf_output_put(handle, x) perf_output_copy((handle), &(x), sizeof(x))
 
 /*
diff --git a/include/video/atmel_lcdc.h b/include/video/atmel_lcdc.h
index 28447f1..5f0e234 100644
--- a/include/video/atmel_lcdc.h
+++ b/include/video/atmel_lcdc.h
@@ -62,6 +62,7 @@ struct atmel_lcdfb_info {
 	void (*atmel_lcdfb_power_control)(int on);
 	struct fb_monspecs	*default_monspecs;
 	u32			pseudo_palette[16];
+	bool			have_intensity_bit;
 };
 
 #define ATMEL_LCDC_DMABADDR1	0x00
diff --git a/kernel/signal.c b/kernel/signal.c
index a4363a9..9f70f45 100644
--- a/kernel/signal.c
+++ b/kernel/signal.c
@@ -482,6 +482,9 @@ flush_signal_handlers(struct task_struct *t, int force_default)
 		if (force_default || ka->sa.sa_handler != SIG_IGN)
 			ka->sa.sa_handler = SIG_DFL;
 		ka->sa.sa_flags = 0;
+#ifdef SA_RESTORER
+		ka->sa.sa_restorer = NULL;
+#endif
 		sigemptyset(&ka->sa.sa_mask);
 		ka++;
 	}
diff --git a/net/core/dev.c b/net/core/dev.c
index eb858dc..dfa2f49 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -3230,6 +3230,7 @@ ncls:
 		}
 		switch (rx_handler(&skb)) {
 		case RX_HANDLER_CONSUMED:
+			ret = NET_RX_SUCCESS;
 			goto out;
 		case RX_HANDLER_ANOTHER:
 			goto another_round;
diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
index 900fc61..da7b3a5 100644
--- a/net/core/rtnetlink.c
+++ b/net/core/rtnetlink.c
@@ -975,6 +975,7 @@ static int rtnl_fill_ifinfo(struct sk_buff *skb, struct net_device *dev,
 			 * report anything.
 			 */
 			ivi.spoofchk = -1;
+			memset(ivi.mac, 0, sizeof(ivi.mac));
 			if (dev->netdev_ops->ndo_get_vf_config(dev, i, &ivi))
 				break;
 			vf_mac.vf =
diff --git a/net/dcb/dcbnl.c b/net/dcb/dcbnl.c
index d860530..2f9517d 100644
--- a/net/dcb/dcbnl.c
+++ b/net/dcb/dcbnl.c
@@ -336,6 +336,7 @@ static int dcbnl_getperm_hwaddr(struct net_device *netdev, struct nlattr **tb,
 	dcb->dcb_family = AF_UNSPEC;
 	dcb->cmd = DCB_CMD_GPERM_HWADDR;
 
+	memset(perm_addr, 0, sizeof(perm_addr));
 	netdev->dcbnl_ops->getpermhwaddr(netdev, perm_addr);
 
 	ret = nla_put(dcbnl_skb, DCB_ATTR_PERM_HWADDR, sizeof(perm_addr),
@@ -1238,6 +1239,7 @@ static int dcbnl_ieee_fill(struct sk_buff *skb, struct net_device *netdev)
 
 	if (ops->ieee_getets) {
 		struct ieee_ets ets;
+		memset(&ets, 0, sizeof(ets));
 		err = ops->ieee_getets(netdev, &ets);
 		if (!err)
 			NLA_PUT(skb, DCB_ATTR_IEEE_ETS, sizeof(ets), &ets);
@@ -1245,6 +1247,7 @@ static int dcbnl_ieee_fill(struct sk_buff *skb, struct net_device *netdev)
 
 	if (ops->ieee_getpfc) {
 		struct ieee_pfc pfc;
+		memset(&pfc, 0, sizeof(pfc));
 		err = ops->ieee_getpfc(netdev, &pfc);
 		if (!err)
 			NLA_PUT(skb, DCB_ATTR_IEEE_PFC, sizeof(pfc), &pfc);
@@ -1277,6 +1280,7 @@ static int dcbnl_ieee_fill(struct sk_buff *skb, struct net_device *netdev)
 	/* get peer info if available */
 	if (ops->ieee_peer_getets) {
 		struct ieee_ets ets;
+		memset(&ets, 0, sizeof(ets));
 		err = ops->ieee_peer_getets(netdev, &ets);
 		if (!err)
 			NLA_PUT(skb, DCB_ATTR_IEEE_PEER_ETS, sizeof(ets), &ets);
@@ -1284,6 +1288,7 @@ static int dcbnl_ieee_fill(struct sk_buff *skb, struct net_device *netdev)
 
 	if (ops->ieee_peer_getpfc) {
 		struct ieee_pfc pfc;
+		memset(&pfc, 0, sizeof(pfc));
 		err = ops->ieee_peer_getpfc(netdev, &pfc);
 		if (!err)
 			NLA_PUT(skb, DCB_ATTR_IEEE_PEER_PFC, sizeof(pfc), &pfc);
@@ -1463,6 +1468,7 @@ static int dcbnl_cee_fill(struct sk_buff *skb, struct net_device *netdev)
 	/* peer info if available */
 	if (ops->cee_peer_getpg) {
 		struct cee_pg pg;
+		memset(&pg, 0, sizeof(pg));
 		err = ops->cee_peer_getpg(netdev, &pg);
 		if (!err)
 			NLA_PUT(skb, DCB_ATTR_CEE_PEER_PG, sizeof(pg), &pg);
@@ -1470,6 +1476,7 @@ static int dcbnl_cee_fill(struct sk_buff *skb, struct net_device *netdev)
 
 	if (ops->cee_peer_getpfc) {
 		struct cee_pfc pfc;
+		memset(&pfc, 0, sizeof(pfc));
 		err = ops->cee_peer_getpfc(netdev, &pfc);
 		if (!err)
 			NLA_PUT(skb, DCB_ATTR_CEE_PEER_PFC, sizeof(pfc), &pfc);
diff --git a/net/ieee802154/6lowpan.h b/net/ieee802154/6lowpan.h
index aeff3f3..60b5ef5 100644
--- a/net/ieee802154/6lowpan.h
+++ b/net/ieee802154/6lowpan.h
@@ -87,7 +87,7 @@
 	(memcmp(addr1, addr2, length >> 3) == 0)
 
 /* local link, i.e. FE80::/10 */
-#define is_addr_link_local(a) (((a)->s6_addr16[0]) == 0x80FE)
+#define is_addr_link_local(a) (((a)->s6_addr16[0]) == htons(0xFE80))
 
 /*
  * check whether we can compress the IID to 16 bits,
diff --git a/net/ipv4/tcp_input.c b/net/ipv4/tcp_input.c
index 57b20b9..fc2fc72 100644
--- a/net/ipv4/tcp_input.c
+++ b/net/ipv4/tcp_input.c
@@ -5519,6 +5519,9 @@ int tcp_rcv_established(struct sock *sk, struct sk_buff *skb,
 				if (tcp_checksum_complete_user(sk, skb))
 					goto csum_error;
 
+				if ((int)skb->truesize > sk->sk_forward_alloc)
+					goto step5;
+
 				/* Predicted packet is in window by definition.
 				 * seq == rcv_nxt and rcv_wup <= rcv_nxt.
 				 * Hence, check seq<=rcv_wup reduces to:
@@ -5530,9 +5533,6 @@ int tcp_rcv_established(struct sock *sk, struct sk_buff *skb,
 
 				tcp_rcv_rtt_measure_ts(sk, skb);
 
-				if ((int)skb->truesize > sk->sk_forward_alloc)
-					goto step5;
-
 				NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_TCPHPHITS);
 
 				/* Bulk data transfer: receiver */
diff --git a/net/ipv6/ip6_input.c b/net/ipv6/ip6_input.c
index 1ca5d45..d813575 100644
--- a/net/ipv6/ip6_input.c
+++ b/net/ipv6/ip6_input.c
@@ -265,7 +265,8 @@ int ip6_mc_input(struct sk_buff *skb)
 	 *      IPv6 multicast router mode is now supported ;)
 	 */
 	if (dev_net(skb->dev)->ipv6.devconf_all->mc_forwarding &&
-	    !(ipv6_addr_type(&hdr->daddr) & IPV6_ADDR_LINKLOCAL) &&
+	    !(ipv6_addr_type(&hdr->daddr) &
+	      (IPV6_ADDR_LOOPBACK|IPV6_ADDR_LINKLOCAL)) &&
 	    likely(!(IP6CB(skb)->flags & IP6SKB_FORWARDED))) {
 		/*
 		 * Okay, we try to forward - split and duplicate
diff --git a/net/ipv6/route.c b/net/ipv6/route.c
index 493490f..5a272c6 100644
--- a/net/ipv6/route.c
+++ b/net/ipv6/route.c
@@ -1973,7 +1973,8 @@ void rt6_purge_dflt_routers(struct net *net)
 restart:
 	read_lock_bh(&table->tb6_lock);
 	for (rt = table->tb6_root.leaf; rt; rt = rt->dst.rt6_next) {
-		if (rt->rt6i_flags & (RTF_DEFAULT | RTF_ADDRCONF)) {
+		if (rt->rt6i_flags & (RTF_DEFAULT | RTF_ADDRCONF) &&
+		    (!rt->rt6i_idev || rt->rt6i_idev->cnf.accept_ra != 2)) {
 			dst_hold(&rt->dst);
 			read_unlock_bh(&table->tb6_lock);
 			ip6_del_rt(rt);
diff --git a/net/l2tp/l2tp_ppp.c b/net/l2tp/l2tp_ppp.c
index 1addd9f..9728a75 100644
--- a/net/l2tp/l2tp_ppp.c
+++ b/net/l2tp/l2tp_ppp.c
@@ -360,6 +360,7 @@ static int pppol2tp_sendmsg(struct kiocb *iocb, struct socket *sock, struct msgh
 	l2tp_xmit_skb(session, skb, session->hdr_len);
 
 	sock_put(ps->tunnel_sock);
+	sock_put(sk);
 
 	return error;
 
diff --git a/net/netlabel/netlabel_unlabeled.c b/net/netlabel/netlabel_unlabeled.c
index e7ff694..7fe20d0 100644
--- a/net/netlabel/netlabel_unlabeled.c
+++ b/net/netlabel/netlabel_unlabeled.c
@@ -1189,8 +1189,6 @@ static int netlbl_unlabel_staticlist(struct sk_buff *skb,
 	struct netlbl_unlhsh_walk_arg cb_arg;
 	u32 skip_bkt = cb->args[0];
 	u32 skip_chain = cb->args[1];
-	u32 skip_addr4 = cb->args[2];
-	u32 skip_addr6 = cb->args[3];
 	u32 iter_bkt;
 	u32 iter_chain = 0, iter_addr4 = 0, iter_addr6 = 0;
 	struct netlbl_unlhsh_iface *iface;
@@ -1215,7 +1213,7 @@ static int netlbl_unlabel_staticlist(struct sk_buff *skb,
 				continue;
 			netlbl_af4list_foreach_rcu(addr4,
 						   &iface->addr4_list) {
-				if (iter_addr4++ < skip_addr4)
+				if (iter_addr4++ < cb->args[2])
 					continue;
 				if (netlbl_unlabel_staticlist_gen(
 					      NLBL_UNLABEL_C_STATICLIST,
@@ -1231,7 +1229,7 @@ static int netlbl_unlabel_staticlist(struct sk_buff *skb,
 #if IS_ENABLED(CONFIG_IPV6)
 			netlbl_af6list_foreach_rcu(addr6,
 						   &iface->addr6_list) {
-				if (iter_addr6++ < skip_addr6)
+				if (iter_addr6++ < cb->args[3])
 					continue;
 				if (netlbl_unlabel_staticlist_gen(
 					      NLBL_UNLABEL_C_STATICLIST,
@@ -1250,10 +1248,10 @@ static int netlbl_unlabel_staticlist(struct sk_buff *skb,
 
 unlabel_staticlist_return:
 	rcu_read_unlock();
-	cb->args[0] = skip_bkt;
-	cb->args[1] = skip_chain;
-	cb->args[2] = skip_addr4;
-	cb->args[3] = skip_addr6;
+	cb->args[0] = iter_bkt;
+	cb->args[1] = iter_chain;
+	cb->args[2] = iter_addr4;
+	cb->args[3] = iter_addr6;
 	return skb->len;
 }
 
@@ -1273,12 +1271,9 @@ static int netlbl_unlabel_staticlistdef(struct sk_buff *skb,
 {
 	struct netlbl_unlhsh_walk_arg cb_arg;
 	struct netlbl_unlhsh_iface *iface;
-	u32 skip_addr4 = cb->args[0];
-	u32 skip_addr6 = cb->args[1];
-	u32 iter_addr4 = 0;
+	u32 iter_addr4 = 0, iter_addr6 = 0;
 	struct netlbl_af4list *addr4;
 #if IS_ENABLED(CONFIG_IPV6)
-	u32 iter_addr6 = 0;
 	struct netlbl_af6list *addr6;
 #endif
 
@@ -1292,7 +1287,7 @@ static int netlbl_unlabel_staticlistdef(struct sk_buff *skb,
 		goto unlabel_staticlistdef_return;
 
 	netlbl_af4list_foreach_rcu(addr4, &iface->addr4_list) {
-		if (iter_addr4++ < skip_addr4)
+		if (iter_addr4++ < cb->args[0])
 			continue;
 		if (netlbl_unlabel_staticlist_gen(NLBL_UNLABEL_C_STATICLISTDEF,
 					      iface,
@@ -1305,7 +1300,7 @@ static int netlbl_unlabel_staticlistdef(struct sk_buff *skb,
 	}
 #if IS_ENABLED(CONFIG_IPV6)
 	netlbl_af6list_foreach_rcu(addr6, &iface->addr6_list) {
-		if (iter_addr6++ < skip_addr6)
+		if (iter_addr6++ < cb->args[1])
 			continue;
 		if (netlbl_unlabel_staticlist_gen(NLBL_UNLABEL_C_STATICLISTDEF,
 					      iface,
@@ -1320,8 +1315,8 @@ static int netlbl_unlabel_staticlistdef(struct sk_buff *skb,
 
 unlabel_staticlistdef_return:
 	rcu_read_unlock();
-	cb->args[0] = skip_addr4;
-	cb->args[1] = skip_addr6;
+	cb->args[0] = iter_addr4;
+	cb->args[1] = iter_addr6;
 	return skb->len;
 }
 
diff --git a/net/rds/message.c b/net/rds/message.c
index f0a4658..aff589c 100644
--- a/net/rds/message.c
+++ b/net/rds/message.c
@@ -197,6 +197,9 @@ struct rds_message *rds_message_alloc(unsigned int extra_len, gfp_t gfp)
 {
 	struct rds_message *rm;
 
+	if (extra_len > KMALLOC_MAX_SIZE - sizeof(struct rds_message))
+		return NULL;
+
 	rm = kzalloc(sizeof(struct rds_message) + extra_len, gfp);
 	if (!rm)
 		goto out;
diff --git a/security/selinux/xfrm.c b/security/selinux/xfrm.c
index 48665ec..8ab2951 100644
--- a/security/selinux/xfrm.c
+++ b/security/selinux/xfrm.c
@@ -310,7 +310,7 @@ int selinux_xfrm_policy_clone(struct xfrm_sec_ctx *old_ctx,
 
 	if (old_ctx) {
 		new_ctx = kmalloc(sizeof(*old_ctx) + old_ctx->ctx_len,
-				  GFP_KERNEL);
+				  GFP_ATOMIC);
 		if (!new_ctx)
 			return -ENOMEM;
 
diff --git a/sound/core/seq/seq_timer.c b/sound/core/seq/seq_timer.c
index 160b1bd..24d44b2 100644
--- a/sound/core/seq/seq_timer.c
+++ b/sound/core/seq/seq_timer.c
@@ -290,10 +290,10 @@ int snd_seq_timer_open(struct snd_seq_queue *q)
 			tid.device = SNDRV_TIMER_GLOBAL_SYSTEM;
 			err = snd_timer_open(&t, str, &tid, q->queue);
 		}
-		if (err < 0) {
-			snd_printk(KERN_ERR "seq fatal error: cannot create timer (%i)\n", err);
-			return err;
-		}
+	}
+	if (err < 0) {
+		snd_printk(KERN_ERR "seq fatal error: cannot create timer (%i)\n", err);
+		return err;
 	}
 	t->callback = snd_seq_timer_interrupt;
 	t->callback_data = q;
