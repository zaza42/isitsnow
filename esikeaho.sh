while : ; do
wget -q -O- http://tgftp.nws.noaa.gov/data/observations/metar/decoded/LHBP.TXT|grep -i snow -q && ( pidof xsnow || xsnow &) || killall xsnow 
sleep 300
done
