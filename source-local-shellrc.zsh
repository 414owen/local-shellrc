. ${0%/*}/source-local-shellrc.sh ".zshrc ${1}"
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd source_local_shellrc
