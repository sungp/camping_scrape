#!/bin/bash

PATH="/usr/local/bin:${PATH}"
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export CAMPGROUND="http://www.reserveamerica.com/camping/pfeiffer-big-sur-sp/r/campgroundDetails.do?contractCode=CA&parkId=120068"
export LENGTH=2
export DATE="10/19/2017"
sites=`$BASE_DIR/scraper.py`

if [ ! -z "$sites" ] ; then
    # We've got a site available
    echo "$sites"  | Mail -s "Big Sur Sites Are Available!!! $DATE" sungp2k@gmail.com 
else
    echo "No Sites Available"  | Mail -s "No Sites Are Available $DATE" sungp2k@gmail.com 
    #echo "No Sites Available"  
fi
