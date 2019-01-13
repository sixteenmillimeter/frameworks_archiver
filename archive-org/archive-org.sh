#!/bin/bash


if [ ! -f links.txt ]; then
	echo "First torrent or download listserv-aol-20111105.tar.gz into this directory"
	echo "https://archive.org/details/archiveteam-listserv-aol-2011-11"
	exit 1
fi

tar -xvzf listserv-aol-20111105.tar.gz

dirs="./*"
for i in $dirs; do 
	if [ "$i" != "./FRAMEWORKS" ] &&  [ "$i" != "./archive-org.sh" ]
	then 
		rm -r ${i};
	fi
done