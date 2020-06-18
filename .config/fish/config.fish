alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias vi='nvim'
alias computer-vision='tmuxinator start computer-vision -n computer-vision'

set -Ux JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_241.jdk/Contents/Home

set -Ux EDITOR nvim
set -g theme_display_virtualenv yes
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g teme_nerd_fonts no
set -g theme_show_exit_status yes
set -g theme_color_scheme dracula

set pipenv_fish_fancy yes
