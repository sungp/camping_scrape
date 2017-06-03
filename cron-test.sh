#!/bin/bash

PATH="/usr/local/bin:${PATH}"
echo "Hello world" | Mail -s "msmtp test at `date`" sungp2k@gmail.com
