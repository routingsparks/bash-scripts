#!/bin/bash

if [[ -z "$TASKDIR" ]]; then
    TASKDIR="$(grep data.location $HOME/.taskrc | cut -d '=' -f 2)"

    if [[ $TASKDIR == "~/" ]]; then
        TASKDIR="${TASKDIR/\~//$HOME\/}"
    fi

    if [[ $TASKDIR == "~" ]]; then
        echo 1>&2 "$? error: The taskrc data.localtion uses a format that is not support: $TASKDIR"
        exit 1
    fi
fi

if [ -z "$TASKBIN" ]; then
    TASKBIN="task"
fi

if [ -d "$TASKDIR" ]; then
    cd "$TASKDIR"
else
    echo 1>&2 "taskgit error: Couldn't navigate to TASKDIR: $TASKDIR"
    echo 1>&2 "Consider changing your taskrc data.location to use ~/ or an absolute path."
    exit 1
fi

"$TASKBIN" "$@"
EXITCODE=$?

if ! [ -d ".git" ]; then
    git init 2>&1 > git.log
    echo "git.log" > .gitignore
    echo "git.log.old" >> .gitignore
    echo "*.pem" >> .gitignore
    git add .gitignore 2>&1 >> git.log
    git add *.data *.theme 2>&1 >> git.log
    git commit -a -m "Initial log" 2>&1 >> git.log
fi

if [ "$#" -gt "0" ]; then
    git add *.data *.theme 2>&1 >> git.log
    git commit -a -m "$*" 2>&1 >> git.log
fi

# Rotate git.log if bigger than 1M
if [ "$(stat -c '%s' git.log)" -gt "1000000" ]; then
    mv -f git.log git.log.old
    touch git.log
fi

exit $EXITCODE
