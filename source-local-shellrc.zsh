source ${0%/*}/source-local-shellrc.sh
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd source_local_shellrc
