#!/bin/bash
#This script generates a 1024-letter one-time pad.
#The output is to the screen.
#The size of the pad can be changed by adjusting "1024".
< /dev/random tr -dc A-Z | head -c${1:-1024};echo;
