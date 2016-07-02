#!/bin/bash
#This script generates a 1025-letter one-time pad.
#The output is to the screen.
#The size of the pad can be changed by adjusting "1025".
#The letters are arranged in groups of five
#on lines of five groups each for easier reading.
</dev/random tr -dc A-Z | head -c${1:-1025} | fold -w5 | paste -sd' ' | fold -w30;echo;
