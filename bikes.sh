#!/bin/bash

wget http://witestlab.poly.edu/bikes/201601-citibike-tripdata.zip
unzip 201601-citibike-tripdata.zip

awk -F "\"*,\"*" '{print $5}' 201601-citibike-tripdata.csv > lines.txt
awk -F "\"*,\"*" '{print $9}' 201601-citibike-tripdata.csv >> lines.txt

cat lines.txt | sort | uniq -c  | sort -n | tail -n 1
