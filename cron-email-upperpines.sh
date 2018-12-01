#!/bin/bash

PATH="/usr/local/bin:${PATH}"
BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export CAMPGROUND="http://www.reserveamerica.com/camping/upper-pines/r/campgroundDetails.do?contractCode=NRSO&parkId=70925"
export LENGTH=2
#export DATE="10/19/2017"
export DATE="09/01/2018"
sites=`$BASE_DIR/scraper.py`

if [ ! -z "$sites" ] ; then
    # We've got a site available
    echo "$sites"  | mutt -s "Upper Pines Sites Are Available!!! $DATE AWS" sungp2k@gmail.com 
else
    echo "No Sites Available"  | mutt -s "No Upper Pines Sites Are Available $DATE AWS" sungp2k@gmail.com 
    #echo "No Sites Available"  
fi
