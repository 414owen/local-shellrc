# local-shellrc

Source shell configs local to a directory.

The main script should be POSIX compliant, so if you hook it up to a shell other than zsh, feel free to contribute :)

## Installation

### [Nix](https://nixos.org/nix/) / [home-manager](https://github.com/rycee/home-manager)

Add [this line](https://github.com/414owen/dotfiles/blob/2789e45114881fb242724ab01107b4fcd44a40d5/zsh.nix#L14)

### Manual

```zsh
git clone https://github.com/414owen/local-shellrc.git
echo ". $PWD/local-shellrc/source-local-shellrc.zsh" >> ~/.zshrc
```

## Usage

Your shell will load the closest `.local.sh` file (and `.zshrc` file in zsh) that's a direct child of a parent directory of `$PWD`.
