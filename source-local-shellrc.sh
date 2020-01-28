# ---
# local-shellrc: Per-project shellrcs
# Contribute at https://github.com/414owen/local-shellrc
# ---

LOCAL_SHELL_FILE=".local.sh"
LOCAL_SHELL_FILE_LIMIT="${HOME}"

# Taken from https://stackoverflow.com/a/18558871/6522680
beginswith() { case $2 in "$1"*) true;; *) false;; esac; }

# Search parent directories until we find a $LOCAL_SHELL_FILE, then source it
source_local_shellrc() {
  local curr="$(pwd -P)"
  while beginswith "${LOCAL_SHELL_FILE_LIMIT}" "${curr}" && [ "${curr}" != "${LOCAL_SHELL_FILE_LIMIT}" ] && [ "${curr}" != "/" ]; do
    [ -f "${curr}/${LOCAL_SHELL_FILE}" ] && . "${curr}/${LOCAL_SHELL_FILE}"
    local curr="$(realpath "${curr}/..")"
  done
}

source_local_shellrc
