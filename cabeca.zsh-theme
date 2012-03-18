# http://en.wikipedia.org/wiki/Miscellaneous_Symbols
# http://en.wikipedia.org/wiki/Dingbat
# • ★ ☁ ☢ ☠ ⚠ ❬ ❭ ❮ ❯ ❰ ❱ ❲ ❳ ❴ ❵
local start_character="%(!.%{$fg_bold[red]%}★.%{$fg_bold[cyan]%}★)%{$reset_color%}"
local end_character="%(!.%{$fg_bold[red]%}❯.%{$fg_bold[cyan]%}❯)%{$reset_color%}"
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="${start_character} ${user_host} ${current_dir}${git_branch} ${end_character} "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}%{$fg[green]%}]"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"