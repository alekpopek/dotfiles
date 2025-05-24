# Zsh configuration for macOS Sonoma

# Load exports, aliases, functions if present
for file in ~/.exports ~/.aliases ~/.functions; do
  [[ -r $file ]] && source $file
done

# Enable completion system
autoload -Uz compinit && compinit

# Enable prompt themes if you want (uncomment below for Powerlevel10k)
# if [[ -r $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme ]]; then
#   source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
# fi

# Set a simple, informative prompt
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst
PROMPT='%F{green}%n@%m%f %F{blue}%~%f ${vcs_info_msg_0_}
%# '

# History settings
setopt append_history
setopt hist_ignore_dups
setopt share_history

# Case-insensitive globbing
setopt nocaseglob

# Editor
export EDITOR=vim

# Language/locale
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Less/Man
export LESS_TERMCAP_md="$ORANGE"
export MANPAGER="less -X"

# Path
export PATH="$HOME/bin:$PATH" 