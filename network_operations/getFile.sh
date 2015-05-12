#!/bin/bash

# Accepts URL to file as argument

getFile () {

    r=`wget -q $1`
    
    if [ $? -ne 0 ] 
        then echo "Not there"

    else

        echo "File Downloaded"
    
    fi

}