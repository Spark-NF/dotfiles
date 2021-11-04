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

# GUI

## Terminal colors
* [iTerm2](Spark.itermcolors)

### System
* Foreground: `#BFBFBF`
* Background: `#151515`
* Cursor color: `#BFBFBF`
* Selection background: `#ECF0F1`

### Colors
* Black: `#2C3E50` / `#34495E`
* Red: `#C0392B` / `#E74C3C`
* Green: `#27AE60` / `#2ECC71`
* Yellow: `#F39C12` / `#F1C40F`
* Blue: `#2473A6` / `#3498DB`
* Purple: `#8E44AD` / `#9B59B6`
* Cyan: `#7AA085` / `#1ABC9C`
* White: `#BDC3C7` / `#ECF0F1`
