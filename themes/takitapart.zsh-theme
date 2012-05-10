# takitapart theme 
# Use with a dark background and 256-color terminal!

DARKEST_BLUE=$FG[024]
DARK_BLUE=$FG[031]
MEDIUM_CYAN=$FG[117]

BRIGHT_ORANGE=$FG[208]

MEDIUM_RED=$FG[124]


function _prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo ' '
}

ZSH_THEME_GIT_PROMPT_PREFIX=" [%{%B$BRIGHT_ORANGE%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%B$FG[245]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$MEDIUM_RED%}*%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{%f%k%b%}
%{%B$MEDIUM_CYAN%}%n%{%B$DARKEST_BLUE%}@%{%B$DARK_BLUE%}%m%{%B%F{green}%} %{%b$BRIGHT_ORANGE%}%~%{%B$FG[245]%}$(git_prompt_info)%E%{%f%k%b%}
$(_prompt_char) %#%{%f%k%b%} '

RPROMPT='!%{%B%F{cyan}%}%!%{%f%k%b%}'
