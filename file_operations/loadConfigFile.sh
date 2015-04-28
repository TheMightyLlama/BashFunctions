#!/bin/bash


# Accepts argument
# loadConfigFile <string: path to config file>
#
# All config keys will be available. And can be accessed as variables of the same name
#
# echo =$USERNAME= =$PASSWORD=
#

function loadConfigFile () {

CONFIGFILE="$1"
eval $(sed '/:/!d;/^ *#/d;s/:/ /;' < "$CONFIGFILE" | while read -r key val
do
    #verify here
    #...
    str="$key='$val'";
    echo "$str";
done)

}