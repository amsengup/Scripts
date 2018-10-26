#!/bin/bash
# Proper header for a Bash script.

OUTPUT_DIR="C:\data\Projects\Mper"


#intialize the file
echo "$(date)" > $OUTPUT_DIR\\PostCode.txt

for i in {1..100000};
do
	tr -cd 'a-zA-Z0-9' < /dev/urandom | head -c 9 >> $OUTPUT_DIR\\PostCode.txt
	printf "\r\n" >> $OUTPUT_DIR\\PostCode.txt
done
echo "$(date)" >> $OUTPUT_DIR\\PostCode.txt
