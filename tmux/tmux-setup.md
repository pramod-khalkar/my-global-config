# Intallation guide for Tmux

## Install tmux with homebrew

`brew install tmux`

## Create ~/.tmux.conf file if not present

`touch ~/.tmux.conf`

## Configure True color

`set -g default-terminal "screen-256color"`

## Change default tmux prefix if needed "Ctl-a"

```shell
set -g prefix C-a
unbind C-b
bind-key C-a send-prefix

```

## Change keybinds for splitting windows

```txt

unbind %
bind | split-window -h

unbind '"'
bind - split-window -v

```

## Add keybind for easily refreshing tmux configuration

```txt

unbind r
bind r source-file ~/.tmux.conf

```

## Add keybind for easily resizing tmux panes

```txt

bind -r j resize-pane -D 5
bind -r k resize-pane -U 5
bind -r l resize-pane -R 5
bind -r h resize-pane -L 5

```

## Add keybind for maximizing and minimizing tmux pane

`bind -r m resize-pane -Z`

## Enable the mouse in tmux

`set -g mouse on`

## Configure vim movements for tmux copy mode

```txt

set-window-option -g mode-keys vi

bind-key -T copy-mode-vi 'v' send -X begin-selection # start selecting text with "v"
bind-key -T copy-mode-vi 'y' send -X copy-selection # copy text with "y"

unbind -T copy-mode-vi MouseDragEnd1Pane # don't exit copy mode after dragging with mouse

```

## Install tpm (tmux plugin manager)

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

## Add and configure tmux plugins with tpm

```text
# tpm plugin
set -g @plugin 'tmux-plugins/tpm'

# list of tmux plugins
set -g @plugin 'christoomey/vim-tmux-navigator' # for navigating panes and vim/nvim with Ctrl-hjkl
set -g @plugin 'jimeh/tmux-themepack' # to configure tmux theme
set -g @plugin 'tmux-plugins/tmux-resurrect' # persist tmux sessions after computer restart
set -g @plugin 'tmux-plugins/tmux-continuum' # automatically saves sessions for you every 15 minutes

set -g @themepack 'powerline/default/cyan' # use this theme for tmux

set -g @resurrect-capture-pane-contents 'on' # allow tmux-ressurect to capture pane contents
set -g @continuum-restore 'on' # enable tmux-continuum functionality

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'

```

## Reference links

[Document link](https://www.josean.com/posts/tmux-setup)

[Video link](https://www.youtube.com/watch?v=U-omALWIBos&t=0s)

## Useful commands/keys/shortcuts to remember

```shell

<ctl-b> :- is prefix by default
<ctl-b> I :- Install added plugins
<ctl-b> w :- Show all windows
tmux ls :- list all sessions
<ctl-b> - :- horizontal split
<ctl-b> | :- vertical split
<ctl-b> r :- reload tmux.conf file (Note :shortcut defined in tmux.conf file)
<ctl-b> : + source-file ~/.tmux.conf :- reload tmux.conf file

```
