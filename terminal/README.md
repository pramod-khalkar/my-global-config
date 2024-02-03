# How to do terminal setup

## Install Homebrew

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## Add Homebrew to path

### After installing, add it to the path (replace ”[username]” with your actual username):

```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[username]/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

```

## Install iTerm2

`brew install --cask iTerm2`

## Install git

`brew install git`

## Install git

`brew install git`

## Install Oh My Zsh

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

## Install PowerLovel10K theme for ohmyzsh

### Run this to install PowerLovel10K

`git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`

### Now that it’s installed, open the ”~/.zshrc” file with your preferred editor and change the value of “ZSH_THEME” as shown below:

`ZSH_THEME="powerlevel10k/powerlevel10k"`

### To reflect this change on your terminal, restart it or run this command:

`source ~/.zshrc`

## Install Meslo Nerd Font

### Install the font by pressing "y" and then quit iTerm2

## Configure PowerLovel10K

### Restart iTerm2. You should now be seeing the PowerLevel10K configuration process. If you don’t, run the following:

`p10k configure`

### Follow the instructions for the PowerLevel10K configuration to make your terminal look as desired.

## Increase terminal font size

1. Open iTerm2 preferences
2. Go to Profiles > Text
3. I increase my font size to about 20px

## Change iTerm2 Colors to My Custom Theme

1. Open iTerm2
2. Download color scheme from here [iTerm Color scheme](https://iterm2colorschemes.com/)
3. Open iTerm2 preferences
4. Go to Profiles > Colors
5. Import the downloaded color profile (Solarized Dark Higher Contrast.itermcolors)
6. Select the color profile (Solarized Dark Higher Contrast.itermcolors)

## Install Zsh Plugins

### Install Zsh-autosuggestions:

`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

### install Zsh-syntax highlighting:

`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

### Open the ”~/.zshrc” file in your desired editor and modify the plugins line to what you see below.

`plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)`

### Load these new plugins by running:

`source ~/.zshrc`

## fuzzy finder setup

### Install binaries

link : https://github.com/junegunn/fzf

`brew install fzf`

### Then add below in zshrc file

`[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
`

## Reference links

[Document link](https://www.josean.com/posts/terminal-setup)

[Video link](https://www.youtube.com/watch?v=CF1tMjvHDRA)

## Useful commands/keys/shortcuts to remember

```
 source ~/.zshrc - refresh terminal settings
 nvim **<tab>    - open file using fuzzy finder
 <C-t> - fuzzy finder trigger
 <C-r> - command history search using fuzzy finder

```
