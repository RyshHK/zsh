# ~/.config/zsh/prompt.zsh

# Prevent Python virtualenv from polluting the prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1

FUNCNEST=100

if [[ $(tty) == /dev/tty[0-9]* ]]; then
    PROMPT='%F{cyan}%n%f %F{yellow}@ %F{green}%m%f: %F{blue}%~%f
%F{yellow}$%f '

else
    eval "$(starship init zsh)"
fi
