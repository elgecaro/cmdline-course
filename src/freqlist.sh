#! /bin/bash

cat $1 |
tr -s '[:space:]' '\n' |
tr -d '[:punct:]' |
tr '[:upper:]' '[:lower:]' |
sort | 
uniq -c | 
sort -nr > $2
