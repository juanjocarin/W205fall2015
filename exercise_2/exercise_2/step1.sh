#!/bin/bash
# Install psycopg2
pip install psycopg2
# Clone Exercise 2 files
mkdir /data/w205/ex2
cd /data/w205/ex2
git init
## Only that directory, not the whole repo
git remote add -f origin git@github.com:UC-Berkeley-I-School/w205-labs-exercises.git
git config core.sparseCheckout true
echo "exercise_2/"> .git/info/sparse-checkout
git pull origin master
# Create EX2Tweetwordcount project
cd /data/w205/exercises/W205fall2015/exercise_2/
sparse quickstart EX2Tweetwordcount
## Copy files from tweetwordcount
cp -fr /data/w205/ex2/exercise_2/tweetwordcount/. /data/w205/exercises/W205fall2015/exercise_2/EX2Tweetwordcount
## Rename topology and delete any other
cd ./EX2Tweetwordcount/topologies/
cp tweetwordcount.clj EX2tweetwordcount.clj
## Another way
# find . ! -name 'EX2tweetwordcount.clj' -type f -exec rm -f {} +
shopt -s extglob
rm !(EX2tweetwordcount.clj)
