#!/bin/bash
mkdir /data/w205/valid_files
tail -n +2 /data/w205/files/Hospital\ General\ Information.csv > /data/w205/valid_files/hospitals.csv
tail -n +2 /data/w205/files/Timely\ and\ Effective\ Care\ -\ Hospital.csv > /data/w205/valid_files/effective_care.csv
tail -n +2 /data/w205/files/Readmissions\ and\ Deaths\ -\ Hospital.csv > /data/w205/valid_files/readmissions.csv
tail -n +2 /data/w205/files/Measure\ Dates.csv > /data/w205/valid_files/measure_dates.csv
tail -n +2 /data/w205/files/hvbp_hcahps_08_06_2015.csv > /data/w205/valid_files/surveys_responses.csv
/data/w205/start-hadoop.sh
hdfs dfs -mkdir -p /user/w205/hospital_compare
hdfs dfs -put ./valid_files/* /user/w205/hospital_compare

