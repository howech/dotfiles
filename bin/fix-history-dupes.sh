export LC_ALL='C' ; for foo in /tmp/home-history-bash/* ; do echo $foo ; file=`basename $foo` ; echo /tmp/*-history-bash/$file ; cat /tmp/*-history-bash/$file | head -n 100000 | nl | sort -k2 | uniq -s8 | sort -n | cut -c 8- > /tmp/hist/`basename $foo` ; done