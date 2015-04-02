#!/bin/bash

function getFileName () {

    filename=$(basename "$1")
    extension="${filename##*.}"
    filename="${filename%.*}"
    echo $filename;

}