#!/usr/bin/env bash
#todo.sh a shell script to quickly add a TODO item to an org mode file in the user's home folder

if # the string is empty and the file is missing
    [ "$*" == "" ] && [ ! -f ~/todo.org ];
then # Tell the user
    echo "There is nothing TODO."
elif # the string is empty
    [ "$*" == "" ];
then # open the file in emacs
    emacs -nw ~/todo.org
else # write the string to the file, and display what was output to the user.
    echo "* TODO $@" >>~/todo.org
    tail ~/todo.org
fi
