#!/bin/bash

/data/start_postgres.sh
sudo -u postgres psql

## AFTER changing the spout and bolts
cd /data/w205/exercises/W205fall2015/exercise_2/EX2Tweetwordcount
sparse run
