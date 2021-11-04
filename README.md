# Installation

```sh
git clone --bare git@github.com:Spark-NF/dotfiles.git $HOME/.dotfiles
mv $HOME/.bashrc $HOME/.bashrc.old
mv $HOME/.profile $HOME/.profile.old
# ... and other files that might be overwritten
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
```

# Dependencies

## Shell
* [zsh](https://www.zsh.org/)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
* [powerlevel10k](https://github.com/romkatv/powerlevel10k)

## Utils
* [delta](https://github.com/dandavison/delta)
