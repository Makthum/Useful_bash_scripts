#!/bin/bash
#Author - Mohamed Makthum Mohamed
# This script is an effort to come up with a script to make craiglist search easy
# Logic or idea is not my own and the credit goes to all souls out there on internet who orginially came 
# up with this idea and provided insight on how to do it
# This script is just a mere attempt to implement same idea on my own.
# Date - 25/05/2013


# this script uses rss feeds from craiglist and based on the page source this script is customised to 
# grep and remove unwanted text and transform using sed 

url="http://vancouver.en.craigslist.ca/search/apa/van?zoomToPosting=&query=&srchType=A&minAsk=&maxAsk=750&bedrooms=2&format=rss"

# grep search all the titles from the result
# sed subsitutues html tags and other unnecessary tags with space 
# sed s'/old pattern /new pattern / ' g where s- substitue and g- global replacement

curl "$url" | grep -E 'item rdf:about=|<title>' | sed s'/<item rdf:about="//'g | \
      sed s'/<title><!\[CDATA\[/ /'g | sed s'/">//'g | sed s'/]]><\/title>//'g > new.txt

cat new.txt

if [ ! -f /home/mohamed/Useful_bash_scripts/old.txt ] 
then
cat new.txt>old.txt
else
diff -i new.txt old.txt>update.txt
mail -s "Craiglist New Posting" makthum@gmail.com<update.txt
fi

