#
# untar: untar or unzip $1
#
# if you need to unpack in specific directory use a
# subshell and cd
#
# (cd /foo && untar mytarball.gz)
#
untar() {
  tarball=$1
  case "${tarball}" in
    *.tar.gz | *.tgz) TAR_CMD xzf "${tarball}" ;;
    *.tar.xz | *.txz) xz -cd "${tarball}" | tar xf - 2>&1  ;;
    *.tar.Z | *.tar.z | *.taz) uncompress -c "${tarball}" | tar xf - 2>&1 || gzip -cd "${tarball}" | tar xf - 2>&1 ;;
    *.tar.bz2 | *.tar.bz | *.tbz2 | *.tbz | *tar.bzip2) bzip2 -cd "${tarball}" | tar xf - 2>&1 ;;
    *.tar) tar xf "${tarball}" ;;
    *.zip) unzip "${tarball}" ;;
    *.7z) 7z x "${tarball}" || 7za x "${tarball}" ;;
    *.rar) unrar "${tarball}" ;;
    *)
      log_err "untar unknown archive format for ${tarball}"
      return 1
      ;;
  esac
}
