#!/bin/bash

echo "Downloading hi-beam.net archives..."
if [ ! -f links.txt ]; then
	touch all.txt
	curl index.html http://www.hi-beam.net/fw/ | grep "<a href" | grep "<li>"  > all.txt

	#Temporary node.js crutch while I figure out what to do about the sed/awk commands
	node crutch.js

	#rm -r clean.txt
	#touch clean.txt
	#while read l; do 
		#echo $l | sed 's/<a href="\([^>]*\).*/\1/' >> clean.txt #'s:<a href="\(.*\)">.*</a>*:\1:'
	#done < all.txt  
	#grep -Eoi '<a [^>]+>' all.txt | grep -Eo 'href="[^\"]+"'


	awk '{print "http://www.hi-beam.net/fw/"$0}' clean.txt > links.txt
	rm all.txt clean.txt index.html
fi 
while read p; do
  #curl -O $p
  wget -r -np -l 1 -w 5 -A html "$p"
  sleep 5 #to be nice
done < links.txt

mv ./www.hi-beam.net/fw/* ./
rm -r www.hi-beam.net/