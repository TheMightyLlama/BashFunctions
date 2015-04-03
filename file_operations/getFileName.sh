#!/bin/bash

function getFileName () {
    
    #Passed value
    filename=$1;

    #Remove directories
    #Strip longest match of */ from start
    filename=${1##*/}

    #Remove extension
    filename=${filename%.*}

    #Return name of file
    echo $filename;

}