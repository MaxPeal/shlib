# uname_os_check: self-check `uname_os`
#
# This checks that uname_os is working correctly.  If
# the conversion from `uname -s` to golang GOOS isn't
# done correctly it will error.
#
uname_os_check() {
  os=$(uname_os)
  case "$os" in
    darwin) return 0 ;;
    dragonfly) return 0 ;;
    freebsd) return 0 ;;
    linux) return 0 ;;
    android) return 0 ;;
    nacl) return 0 ;;
    netbsd) return 0 ;;
    openbsd) return 0 ;;
    plan9) return 0 ;;
    solaris) return 0 ;;
    windows) return 0 ;;
  esac
  log_crit "uname_os_check '$(uname -s)' got converted to '$os' which is not a GOOS value. Please file bug at https://github.com/client9/shlib"
  log_crit "uname -m = `(uname -m) 2>/dev/null || echo unknown`"
  log_crit "uname -r = `(uname -r) 2>/dev/null || echo unknown`"
  log_crit "uname -s = `(uname -s) 2>/dev/null || echo unknown`"
  log_crit "uname -v = `(uname -v) 2>/dev/null || echo unknown`"
  log_crit "/usr/bin/uname -p = `(/usr/bin/uname -p) 2>/dev/null`"
  log_crit "/bin/uname -X     = `(/bin/uname -X) 2>/dev/null`"
  log_crit "hostinfo               = `(hostinfo) 2>/dev/null`"
  log_crit "/bin/universe          = `(/bin/universe) 2>/dev/null`"
  log_crit "/usr/bin/arch -k       = `(/usr/bin/arch -k) 2>/dev/null`"
  log_crit "/bin/arch              = `(/bin/arch) 2>/dev/null`"
  log_crit "/usr/bin/oslevel       = `(/usr/bin/oslevel) 2>/dev/null`"
  log_crit "/usr/convex/getsysinfo = `(/usr/convex/getsysinfo) 2>/dev/null`"
  log_crit "command -v wget = `(command -v wget) 2>/dev/null`"
  log_crit "command -v curl = `(command -v curl) 2>/dev/null`"
  log_crit "command -v lsb_release = `(command -v lsb_release) 2>/dev/null`"
  log_crit "command -v getconf = `(command -v getconf) 2>/dev/null`"
  log_crit "lsb_release -a = `(lsb_release -a) 2>/dev/null`"
  log_crit "getconf -a = `(getconf -a) 2>/dev/null`"
  log_crit "getconf HW_CPU_SUPP_BITS = `(getconf HW_CPU_SUPP_BITS) 2>/dev/null`"
  log_crit "getconf SC_CPU_VERSION = `(getconf SC_CPU_VERSION) 2>/dev/null`"
  log_crit "getconf SC_KERNEL_BITS = `(getconf SC_KERNEL_BITS) 2>/dev/null`"
  log_crit "getconf KERNEL_BITS = `(getconf KERNEL_BITS) 2>/dev/null`"
  log_crit "getconf LONG_BIT = `(getconf LONG_BIT) 2>/dev/null`"
  log_crit "cat /proc/cpuinfo = `(cat /proc/cpuinfo) 2>/dev/null`"
  return 1
}
