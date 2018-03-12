PROMPT="%F{046}%n@%m%f %F{038}%~%f$ "

export LANG=ja_JP.UTF-8

autoload -U compinit
compinit

autoload -U colors
colors


source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting"
zplug "chrissicool/zsh-256color"
zplug "b4b4r07/emoji-cli"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi


zstyle ':completion:*:sudo:*' command-path /usr/local/sbin \
                                           /usr/local/bin  \
                                           /usr/sbin       \
                                           /usr/bin        \
                                           /sbin           \
                                           /bin            \
                                           /usr/X11R6/bin
