#!/bin/bash

function getFileName () {
    
    #Remove directories
    filename=${1##*/}

    #Remove extension
    filename=${filename%.*}

    echo $filename;

}