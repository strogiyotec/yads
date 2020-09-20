#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}
run compton
run safeeyes
#run nitrogen --restore
run setsid greenclip daemon  >/dev/null 2>&1 < /dev/null &
run setxkbmap -layout "us,ru"
