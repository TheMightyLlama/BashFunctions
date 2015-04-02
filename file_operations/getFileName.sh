#!/bin/bash

function getFileName () {
    
    #Passed value
    filename=$1;

    #Remove directories
    filename=${1##*/}

    #Remove extension
    filename=${filename%.*}

    #Return name of file
    echo $filename;

}