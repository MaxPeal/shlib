#!/bin/sh
printblock() {
printf %s\\n  "#----------------------------------------------------"
}
err-report-helper() {
printblock
printf %s\\n  "uname -m = `(uname -m) 2>/dev/null || echo unknown`"
printf %s\\n  "uname -r = `(uname -r) 2>/dev/null || echo unknown`"
printf %s\\n  "uname -s = `(uname -s) 2>/dev/null || echo unknown`"
printf %s\\n  "uname -v = `(uname -v) 2>/dev/null || echo unknown`"
printf %s\\n  "/usr/bin/uname -p = `(/usr/bin/uname -p) 2>/dev/null`"
printf %s\\n  "/bin/uname -X     = `(/bin/uname -X) 2>/dev/null`"
printf %s\\n  "hostinfo               = `(hostinfo) 2>/dev/null`"
printf %s\\n  "/bin/universe          = `(/bin/universe) 2>/dev/null`"
printf %s\\n  "/usr/bin/arch -k       = `(/usr/bin/arch -k) 2>/dev/null`"
printf %s\\n  "/bin/arch              = `(/bin/arch) 2>/dev/null`"
printf %s\\n  "/usr/bin/oslevel       = `(/usr/bin/oslevel) 2>/dev/null`"
printf %s\\n  "/usr/convex/getsysinfo = `(/usr/convex/getsysinfo) 2>/dev/null`"
printblock
printf %s\\n  "command -v wget = `(command -v wget) 2>/dev/null`"
printf %s\\n  "command -v curl = `(command -v curl) 2>/dev/null`"
printblock
printf %s\\n  "command -v sh = `(command -v sh) 2>/dev/null`"
printf %s\\n  "command -v /bin/sh = `(command -v /bin/sh) 2>/dev/null`"
printf %s\\n  "ls -la /bin/sh = `(ls -la /bin/sh) 2>/dev/null`"
printf %s\\n  "/bin/sh --version = `(/bin/sh --version) 2>/dev/null`"
printf %s\\n  "/bin/sh --help = `(/bin/sh --help) 2>/dev/null`"
printf %s\\n  "command -v bash = `(command -v bash) 2>/dev/null`"
printf %s\\n  "command -v /bin/bash = `(command -v /bin/bash) 2>/dev/null`"
printf %s\\n  "ls -la /bin/bash = `(ls -la /bin/bash) 2>/dev/null`"
printf %s\\n  "/bin/bash --version = `(/bin/bash --version) 2>/dev/null`"
printf %s\\n  "/bin/bash --help = `(/bin/bash --help) 2>/dev/null`"
printblock
printf %s\\n  "command -v awk = `(command -v awk) 2>/dev/null`"
printf %s\\n  "awk -V = `(awk -V) 2>/dev/null`"
printf %s\\n  "awk --version = `(awk --version) 2>/dev/null`"
printf %s\\n  "awk --copyright = `(awk --copyright) 2>/dev/null`"
printf %s\\n  "awk -W version = `(awk -W version) 2>/dev/null`"
printf %s\\n  "awk -W v = `(awk -W v) 2>/dev/null`"
printf %s\\n  "awk -Wv = `(awk -Wv) 2>/dev/null`"
printf %s\\n  "command -v mawk = `(command -v mawk) 2>/dev/null`"
printf %s\\n  "mawk -V = `(mawk -V) 2>/dev/null`"
printf %s\\n  "mawk --version = `(mawk --version) 2>/dev/null`"
printf %s\\n  "mawk --copyright = `(mawk --copyright) 2>/dev/null`"
printf %s\\n  "mawk -W version = `(mawk -W version) 2>/dev/null`"
printf %s\\n  "mawk -W v = `(mawk -W v) 2>/dev/null`"
printf %s\\n  "mawk -Wv = `(mawk -Wv) 2>/dev/null`"
printf %s\\n  "command -v nawk = `(command -v nawk) 2>/dev/null`"
printf %s\\n  "nawk -V = `(nawk -V) 2>/dev/null`"
printf %s\\n  "nawk --version = `(nawk --version) 2>/dev/null`"
printf %s\\n  "nawk --copyright = `(nawk --copyright) 2>/dev/null`"
printf %s\\n  "nawk -W version = `(nawk -W version) 2>/dev/null`"
printf %s\\n  "nawk -W v = `(nawk -W v) 2>/dev/null`"
printf %s\\n  "nawk -Wv = `(nawk -Wv) 2>/dev/null`"
printf %s\\n  "command -v gawk = `(command -v gawk) 2>/dev/null`"
printf %s\\n  "gawk -V = `(gawk -V) 2>/dev/null`"
printf %s\\n  "gawk --version = `(gawk --version) 2>/dev/null`"
printf %s\\n  "gawk --copyright = `(gawk --copyright) 2>/dev/null`"
printf %s\\n  "gawk -W version = `(gawk -W version) 2>/dev/null`"
printf %s\\n  "gawk -W v = `(gawk -W v) 2>/dev/null`"
printf %s\\n  "gawk -Wv = `(gawk -Wv) 2>/dev/null`"
printblock
printf %s\\n  "command -v sed = `(command -v sed) 2>/dev/null`"
printf %s\\n  "sed --version = `(sed --version) 2>/dev/null`"
printf %s\\n  "sed --help = `(sed --help) 2>/dev/null`"
printf %s\\n  "command -v ssed = `(command -v ssed) 2>/dev/null`"
printf %s\\n  "ssed --version = `(ssed --version) 2>/dev/null`"
printf %s\\n  "ssed --help = `(ssed --help) 2>/dev/null`"
printf %s\\n  "command -v gsed = `(command -v gsed) 2>/dev/null`"
printf %s\\n  "gsed --version = `(gsed --version) 2>/dev/null`"
printf %s\\n  "gsed --help = `(gsed --help) 2>/dev/null`"
printblock
printf %s\\n  "command -v busybox = `(command -v busybox) 2>/dev/null`"
printf %s\\n  "busybox = `(busybox) 2>/dev/null`"
printf %s\\n  "busybox --help = `(busybox --help) 2>/dev/null`"
printf %s\\n  "busybox --version = `(busybox --version) 2>/dev/null`"
printf %s\\n  "busybox --list-full = `(busybox --list-full) 2>/dev/null`"
printblock
printf %s\\n  "command -v toybox = `(command -v toybox) 2>/dev/null`"
printf %s\\n  "toybox = `(toybox) 2>/dev/null`"
printf %s\\n  "toybox --help = `(toybox --help) 2>/dev/null`"
printf %s\\n  "toybox --version = `(toybox --version) 2>/dev/null`"
printf %s\\n  "toybox --long = `(toybox --long) 2>/dev/null`"
printblock
printf %s\\n  "command -v lsb_release = `(command -v lsb_release) 2>/dev/null`"
printf %s\\n  "lsb_release -a = `(lsb_release -a) 2>/dev/null`"
printf %s\\n  "ls -al /etc/*release = `(ls -al /etc/*release) 2>/dev/null`"
printf %s\\n  "cat /etc/*release = `(cat /etc/*release) 2>/dev/null`"
printblock
printf %s\\n  "command -v getconf = `(command -v getconf) 2>/dev/null`"
printf %s\\n  "getconf -a = `(getconf -a) 2>/dev/null`"
printf %s\\n  "getconf HW_CPU_SUPP_BITS = `(getconf HW_CPU_SUPP_BITS) 2>/dev/null`"
printf %s\\n  "getconf SC_CPU_VERSION = `(getconf SC_CPU_VERSION) 2>/dev/null`"
printf %s\\n  "getconf SC_KERNEL_BITS = `(getconf SC_KERNEL_BITS) 2>/dev/null`"
printf %s\\n  "getconf KERNEL_BITS = `(getconf KERNEL_BITS) 2>/dev/null`"
printf %s\\n  "getconf LONG_BIT = `(getconf LONG_BIT) 2>/dev/null`"
printblock
printf %s\\n  "cat /proc/cpuinfo = `(cat /proc/cpuinfo) 2>/dev/null`"
printblock
}

sourced=0
if [ -n "$ZSH_EVAL_CONTEXT" ]; then 
  case $ZSH_EVAL_CONTEXT in *:file) sourced=1;; esac
elif [ -n "$KSH_VERSION" ]; then
  [ "$(cd $(dirname -- $0) && pwd -P)/$(basename -- $0)" != "$(cd $(dirname -- ${.sh.file}) && pwd -P)/$(basename -- ${.sh.file})" ] && sourced=1
elif [ -n "$BASH_VERSION" ]; then
  (return 0 2>/dev/null) && sourced=1 
else # All other shells: examine $0 for known shell binary filenames
  # Detects `sh` and `dash`; add additional shell filenames as needed.
  case ${0##*/} in sh|dash) sourced=1;; esac
fi

# FIXME see https://stackoverflow.com/a/28776166
[ "$sourced" ] || err-report-helper
