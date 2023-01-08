#!/bin/bash
keys=$(wget -qO- https://github.com/21jun.keys)
echo "$keys" | while read -r key
do
    if [ -f "/home/lee1jun/.ssh/authorized_keys" ] && ! grep "$key" "/home/lee1jun/.ssh/authorized_keys" &> /dev/null
    then
        echo "$key" >> "/home/lee1jun/.ssh/authorized_keys"
    fi
done
