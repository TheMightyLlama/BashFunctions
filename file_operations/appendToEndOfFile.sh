#!/bin/bash

function appendToEndOfFile () {
    
    #Passed values
    filename=$1;
    text=$2

    #Append to end of file
    echo $text >> $filename;

}