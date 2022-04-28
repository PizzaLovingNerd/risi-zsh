# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
setopt autocd nomatch
unsetopt beep extendedglob notify
bindkey -e

## risiOS additions
PROMPT='%B%F{blue}%n%f // %F{cyan}%~%f >>%b ' # custom prompt used by risiOS

# plugins
if [ -d /usr/share/risi-zsh-plugins ]; then
  source /usr/share/risi-zsh-plugins/git-prompt/git-prompt.plugin.zsh
  source /usr/share/risi-zsh-plugins/coprdir/coprdir.plugin.zsh
  source /usr/share/risi-zsh-plugins/copypath/copypath.plugin.zsh
fi

if [ -d /usr/share/zsh-autosuggestions ]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [ -d /usr/share/zsh-syntax-highlighting ]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Plugin Credits (some are slightly modified):
# git-prompt: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-prompt
# zsh-autosuggestions: https://github.com/zsh-users/zsh-autosuggestions
# zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting

# aliases
alias rm=rm -i

# binds
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
export EDITOR=micro

# risifetch
risifetch
