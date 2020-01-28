# local-shellrc

Source shellrcs local to a directory.

This script should be POSIX compliant, but I use ZSH, so that's what the instructions cover.

If you hook it up in another shell, feel free to contribute instructions :)

## Usage

### ZSH

```zsh
autoload -U add-zsh-hook
. source-local-shellrc.sh
add-zsh-hook -Uz chpwd source_local_shellrc
```
