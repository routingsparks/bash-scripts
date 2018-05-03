#!/bin/bash

HAMPTONWX=http://tgftp.nws.noaa.gov/data/observations/metar/decoded/KLFI.TXT

curl -s $HAMPTONWX | sed -n '1p' | awk '{print $1,$2,$3,$4,$5,$6,$7,$8}'
curl -s $HAMPTONWX | sed -n '2p' | awk '{print $1,$2,$3,$4,$5,$6,$7}'
curl -s $HAMPTONWX | sed -n '3p' | awk '{print $1,$4,$7,$8,$9,"with",$14,$15,"gusts"}'
curl -s $HAMPTONWX | sed -n '4p' | awk '{print $1,$2,$3}' | sed -e 's/\:0\>//g'
curl -s $HAMPTONWX | sed -n '5p'
curl -s $HAMPTONWX | sed -n '6p' | awk '{print $1,$2,$3}' 
curl -s $HAMPTONWX | sed -n '7p' | awk '{print $1,$2,$3,$4}' 
curl -s $HAMPTONWX | sed -n '8p'
curl -s $HAMPTONWX | sed -n '9p' | awk '{print $1,$2,$3,$4}' 
