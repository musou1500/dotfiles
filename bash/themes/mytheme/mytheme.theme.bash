#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" "
SCM_THEME_PROMPT_SUFFIX="${green} "

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX="${green}  "
GIT_THEME_PROMPT_SUFFIX="${green}"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

function prompt_command() {

    #PS1="${bold_cyan}$(scm_char)${green}$(scm_prompt_info)${purple}$(ruby_version_prompt) ${yellow}\h ${reset_color}in ${green}\w ${reset_color}\n${green}→${reset_color} "
    #PS1="\n${purple}\h: ${reset_color} ${green}\w\n${bold_cyan}$(scm_char)${green}$(scm_prompt_info) ${green}→${reset_color} "
    #PS1="\n${cyan}\h: ${reset_color} ${yellow}\w\n${red}$(scm_char)${red}$(scm_prompt_info) ${green}→${reset_color} "
    export PROMPT_DIRTRIM=3
    PS1="\n$(clock_prompt)${reset_color}${bold_blue} \w${reset_color}"
    PS1+="${cyan}$(scm_prompt_info)${reset_color}"
    PS1+="\n ${bold_white}→ ${normal}"
}

dark_gray="\[\e[38;5;7m\]"
THEME_CLOCK_COLOR=${THEME_CLOCK_COLOR:-"$dark_gray"}
THEME_CLOCK_FORMAT=${THEME_CLOCK_FORMAT:-" [%H:%M:%S]"}


safe_append_prompt_command prompt_command
