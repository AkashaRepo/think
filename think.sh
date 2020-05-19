#!/usr/bin/env bash
#think.sh a shell script to append a timestamped comment to an org mode file named thoughts.org

if # the string is empty and the file is missing
    [ "$*" == "" ] && [ ! -f thoughts.org ];
then # make a file with dummy input.
    echo -e "* $(date)\n\tI think therefore I am.\n" >>thoughts.org
    echo -e "* $(date)\n\tI think therefore I am$@"
elif # the string is empty 
    [ "$*" == "" ];
then # simply output the contents of the file
    tail thoughts.org
else # write the string to the file, and display what was output to the user.
    echo -e "* $(date)\n\t$@\n" >>thoughts.org
    echo -e "* $(date)\n\t$@"
fi
