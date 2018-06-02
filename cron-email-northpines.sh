#!/bin/bash

PATH="/usr/local/bin:${PATH}"
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export CAMPGROUND="https://www.reserveamerica.com/camping/north-pines/r/campgroundDetails.do?contractCode=NRSO&parkId=70927"
export LENGTH=2
#export DATE="10/19/2017"
export DATE="09/01/2018"
sites=`$BASE_DIR/scraper.py`

if [ ! -z "$sites" ] ; then
    # We've got a site available
    echo "$sites"  | Mail -s "North Pines Sites Are Available!!! $DATE" -c spark0820@yahoo.com sungp2k@gmail.com 
else
    echo "No Sites Available"  | Mail -s "No North Pines Sites Are Available $DATE" -c spark0820@yahoo.com sungp2k@gmail.com 
    #echo "No Sites Available"  
fi
