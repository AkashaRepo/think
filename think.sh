#!/usr/bin/env bash
#think.sh a shell script to append a timestamped comment to an org mode file named thoughts.org

OUTPUT=~/thoughts.org

if # the string is empty and the file is missing
    [ "$*" == "" ] && [ ! -f $OUTPUT ];
then # make a file with dummy input.
    echo -e "* Thoughts\n** $(date)\n\tI think therefore I am.\n" >>$OUTPUT
    tail $OUTPUT
elif # the string is empty 
    [ "$*" == "" ];
then # simply output the contents of the file
    tail $OUTPUT
else # write the string to the file, and display what was output to the user.
    echo -e "** $(date)\n\t$@\n" >>$OUTPUT
    tail $OUTPUT
fi
