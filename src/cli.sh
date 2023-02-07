#!/bin/sh

echo "Hello from the CLI"
echo "Arguments: $@"
echo
echo "Printing all files from your /tmp/container_persistent folder:"

if [ ! "$(ls -A /persistent)" ]; then
    echo "Your folder is empty"
else
    set -ex
    tail -n +1 /persistent/*
fi


