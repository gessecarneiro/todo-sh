#!/usr/bin/env bash

TODO="${HOME}/Documents/todo.txt"

#FUNCTIONS

#Create task list
todo() {
    [  $# -eq 0 ] && cat $TODO || echo "$(echo $* | md5sum | cut -c 1-4) -> $*" >> $TODO ;}

#Remove a single task
todorm() { 
    sed -i "/^$*/d" $TODO ;}


