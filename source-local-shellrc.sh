# ---
# local-shellrc: Per-project shellrcs
# Contribute at https://github.com/414owen/local-shellrc
# ---

LOCAL_SHELL_FILES=".local.sh ${1}"
LOCAL_SHELL_FILE_LIMIT="${HOME}"

# Taken from https://stackoverflow.com/a/18558871/6522680
beginswith() { case $2 in "$1"*) true;; *) false;; esac; }

# Search parent directories until we find a file in $LOCAL_SHELL_FILES, then source it
source_local_shellrc() {
  local curr="$(pwd -P)"
  while beginswith "${LOCAL_SHELL_FILE_LIMIT}" "${curr}" && [ "${curr}" != "${LOCAL_SHELL_FILE_LIMIT}" ]; do
    for fname in $(echo "${LOCAL_SHELL_FILES}"); do
      [ -f "${curr}/${fname}" ] && . "${curr}/${fname}"
    done
    local curr="$(realpath "${curr}/..")"
  done
}

source_local_shellrc
