#!/bin/bash

function printStatus () {
    string=$1;
    status=$2;

    lineLength=`tput cols`;
    stringLength=${#string};
    statusLength=${#status};

    periodLength=$((lineLength - stringLength - statusLength));
    
    printf "${string}";
    printf '%0.s.' $(seq 1 $periodLength);
    

    if [[ ${status} = "OK" ]] ; then
        printf "${green}${status}${reset}";
    fi

    if [[ ${status} = "NOK" ]] ; then
        printf "${red}${status}${reset}";
    fi

}

#See https://code.google.com/p/bsfl/ for more examples