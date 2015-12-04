#!/bin/bash
# Initialize Postgres
/data/start_postgres.sh
#sudo -u postgres psql
#Create DB
python ./createDB.py
## AFTER changing the spout and bolts
cd ./EX2Tweetwordcount
#sparse run 2>&1 | tee log.txt
sparse run
