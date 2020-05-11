#
# supported names can be found
# around here: https://github.com/golang/go/blob/master/src/cmd/dist/build.go#L1094
# or by running `go tool dist list`
# Except instead of `arm`, this checks for `armv5`, `armv6`, armv7`
#
uname_arch_check() {
  arch=$(uname_arch)
  case "$arch" in
    386) return 0 ;;
    amd64) return 0 ;;
    arm64) return 0 ;;
    armv5) return 0 ;;
    armv6) return 0 ;;
    armv7) return 0 ;;
    ppc64) return 0 ;;
    ppc64le) return 0 ;;
    mips) return 0 ;;
    mipsle) return 0 ;;
    mips64) return 0 ;;
    mips64le) return 0 ;;
    s390x) return 0 ;;
    amd64p32) return 0 ;;
  esac
  log_crit "uname_arch_check '$(uname -m)' got converted to '$arch' which is not a GOARCH value.  Please file bug report at https://github.com/client9/shlib"
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
