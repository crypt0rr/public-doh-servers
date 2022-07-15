#!/bin/bash
INPUT="dns.list"
read -p "Enter DNS server to use: " SERVER
while IFS= read -r line
do
  dig @$SERVER +short -t "a" "$line" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" >> ipv4.list
done < "$INPUT"
sort -u ipv4.list | sort -h >> ipv4.list.new && mv ipv4.list.new ipv4.list
