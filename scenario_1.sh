#!/bin/sh

SERVER_PORT=${1:-6001}    
SITE="http://localhost:$SERVER_PORT/"
OUTFILE="scenario1/results-${SERVER_PORT}.txt"
DIVIDER="\n====================================================================\n"

if curl --output /dev/null --silent --head --fail "$SITE"; then
  echo "Performing SCENARIO 1 on: $SITE"
else
  echo "URL does not exist: $SITE"
  echo "Aborting scenarios"
  exit 1
fi

mkdir -p scenario1
touch $OUTFILE;

echo "1 concurrent user doing 100 page hits"
echo "1 concurrent user doing 100 page hits" > $OUTFILE
echo "This shows you how well the web-server will handle a simple load of 1 user doing a number of page loads." >> $OUTFILE
echo "\n" >> $OUTFILE
ab -l -r -n 100 -c 1 -k $SITE >> $OUTFILE

sleep 5

echo $DIVIDER >> $OUTFILE
echo "10 concurrent users each doing 10 page hits"
echo "10 concurrent users each doing 10 page hits" >> $OUTFILE
echo "This is 100 page loads by 10 different concurrent users, each user is doing 10 sequential pages loads." >> $OUTFILE
echo "\n" >> $OUTFILE
ab -l -r -n 100 -c 10 -k $SITE >> $OUTFILE

sleep 5

echo $DIVIDER >> $OUTFILE
echo "25 concurrent users each doing 4 page hits"
echo "25 concurrent users each doing 4 page hits" >> $OUTFILE
echo "This is 100 page loads by 10 different concurrent users, each user is doing 4 sequential pages loads." >> $OUTFILE
echo "\n" >> $OUTFILE
ab -l -r -n 100 -c 25 -k $SITE >> $OUTFILE

sleep 5

echo $DIVIDER >> $OUTFILE
echo "50 concurrent users each doing 2 page hits"
echo "50 concurrent users each doing 2 page hits" >> $OUTFILE
echo "This is 100 page loads by 50 different concurrent users, each user is doing 2 sequential pages loads." >> $OUTFILE
echo "\n" >> $OUTFILE
ab -l -r -n 100 -c 50 -k $SITE >> $OUTFILE

sleep 5

echo $DIVIDER >> $OUTFILE
echo "SCENARIO 1 Complete."
