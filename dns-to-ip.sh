#!/bin/bash
INPUT="dns.list"
read -p "Enter DNS server to use: " SERVER
while IFS= read -r line
do
  dig @$SERVER +short -t "a" "$line" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" >> tmp_out
done < "$INPUT"
sort -u tmp_out | sort -h > ipv4.list && rm tmp_out
