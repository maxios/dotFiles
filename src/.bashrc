#!/bin/bash

[ -n "$PS1" ] \
    && . ~/.bash_profile

###-tns-completion-start-###
if [ -f /home/maxios/.tnsrc ]; then 
    source /home/maxios/.tnsrc 
fi
###-tns-completion-end-###
