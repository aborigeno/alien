#!/usr/bin/env zsh

THEME_DIR="${0:A:h}/themes"

alien_load_theme(){
  if [[ "${ALIEN_THEME}" == "red" ]]; then
    source "${THEME_DIR}/red.zsh"
  elif [[ "${ALIEN_THEME}" == "green" ]]; then
    source "${THEME_DIR}/green.zsh"
  elif [[ "${ALIEN_THEME}" == "blue" ]]; then
    source "${THEME_DIR}/blue.zsh"
  else
    source "${THEME_DIR}/red.zsh"
  fi
  alien_theme

  [[ -z $color10 ]] && color10=244     # lr bg
  [[ -z $color11 ]] && color11=255     # lr fg
  [[ -z $color12 ]] && color12=253     # dirty copy bg
  [[ -z $color13 ]] && color13=016     # dirty copy fg
  [[ -z $color14 ]] && color14=245     # venv color
}
