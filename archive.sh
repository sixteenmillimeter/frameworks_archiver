#!/bin/bash

curl index.html https://mailman-mail5.webfaction.com/pipermail/frameworks/ | grep "Gzip'd" > all.txt

cat all.txt | pup 'a attr{href}' > clean.txt

awk '{print "https://mailman-mail5.webfaction.com/pipermail/frameworks/"$0}' clean.txt > links.txt

rm all.txt clean.txt index.html

while read p; do
  curl -O $p
  sleep 5 #to be nice
done < links.txt
