#!/bin/bash
mkdir /data/w205/files
wget -O files.zip https://data.medicare.gov/views/bg9k-emty/files/Ma46xU4I05xsIKuEqLLi-N-s7GoO2ZefzJ7SYyTIKjA?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip
wait
unzip files.zip -d /data/w205/files
rm files.zip
