#!/bin/bash

curl https://mailman-mail5.webfaction.com/pipermail/frameworks/ | grep "Gzip'd" > all.txt

cat all.txt | pup 'a attr{href}' > clean.txt

awk '{print "https://mailman-mail5.webfaction.com/pipermail/frameworks/"$0}' clean.txt > links.txt

rm all.txt clean.txt

while read p; do
  wget $p
  sleep 5 #to be nice
done < links.txt
