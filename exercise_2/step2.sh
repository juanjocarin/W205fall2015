#!/bin/bash
# Install tweepy
pip install tweepy
# Optional (to avoid a Warning)
## We could upgrade Python from 2.7.3 to 2.7.9
## ...or downgradte the library that cause the warning
sudo pip install requests==2.5.3
# Check the Twitter API
## AFTER creating an application
## and including our credentials in Twittercredentials.py
cd /data/w205/ex2/exercise_2/
python hello-stream-twitter.py
