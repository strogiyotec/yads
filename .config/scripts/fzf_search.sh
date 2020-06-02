#!/bin/bash

grep "$1" ~/.config/bash/.bash_history | fzf
