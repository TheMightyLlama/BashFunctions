#!/bin/bash

# Run on photos with embedded geo-data to get the coordinates and open it in a map
# Adapted from http://www.evanlovely.com/utilities/photo-geotags/
# Accepts image as argument

getGeoTag () {

  lat=$(mdls -raw -name kMDItemLatitude "$1")

  if [ "$lat" != "(null)" ]; then

    long=$(mdls -raw -name kMDItemLongitude "$1")
    echo -n $lat,$long | pbcopy
    echo $lat,$long copied
    open https://www.google.com/maps?q=$lat,$long

  else

    echo "No Geo-Data Available"

  fi

}