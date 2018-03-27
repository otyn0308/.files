#PROMPT="%K{014}%n@%m%k%K{013}%~%k$ "
PROMPT="%K{032}%F{255}%n@%m%f%k%K{025}%F{032}▶%f%k%K{025}%F{255} %~%f%k%K{020}%F{025}▶%f%k%K{020}%F{255}$%f%k%F{020}▶%f"

export LANG=en_US.UTF-8

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

zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'prompt'
