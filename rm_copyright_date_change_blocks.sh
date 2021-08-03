sed -i '/^@@ -1,.* +1,.* @@/,/^@@ /{/^\(^@@ -1,.* +1,.* @@\|^  *\|^-.*\* Copyright.*\|^+.*\* Copyright.*\)/d}' $(grep "^- \* Copyright.*All rights reserved" CVE* -R -l);
