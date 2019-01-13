#!/bin/bash

if [ ! -f links.txt ]; then
	curl index.html https://mailman-mail5.webfaction.com/pipermail/frameworks/ | grep "Gzip'd" > all.txt

	#cat all.txt | pup 'a attr{href}' > clean.txt

	#replace pup with a simple cut command
	touch clean.txt

	while read l; do 
		A="$(cut -d'"' -f2 <<<$l)"
		echo $A >> clean.txt
	done < all.txt  

	awk '{print "https://mailman-mail5.webfaction.com/pipermail/frameworks/"$0}' clean.txt > links.txt

	rm all.txt clean.txt index.html
fi

while read p; do
  curl -O $p
  sleep 5 #to be nice
done < links.txt
