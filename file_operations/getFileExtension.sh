#!/bin/bash

function getFileExtension () {
    
    #Passed value
    filename=$1;

    #Remove directories
    #Strip longest match of */ from start
    filename=${1##*/}

    #Remove filename
    extension=${filename##*.}

    #Return name of file
    echo $extension;

}