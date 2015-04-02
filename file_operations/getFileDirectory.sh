#!/bin/bash

function getFileDirectory () {
    
    #Passed value
    filename=$1;

    #Remove fileName
    #Strip shortest match of /* from the end
    directory=${1%/*}

    #Return name of file
    echo $directory;

}