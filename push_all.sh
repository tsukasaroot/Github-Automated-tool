#!/bin/sh

echo "Starting by pulling distant changes\n"
find ~/$1 -maxdepth 1 -type d -execdir git -C {}/. pull \; > /dev/null 2>&1
echo "Adding local changes to the pool...\n"
find ~/$1 -maxdepth 1 -type d -execdir git -C {}/. add . \; > /dev/null 2>&1
echo "Commiting added local changes to HEAD remote...\n"
find ~/$1 -maxdepth 1 -type d -execdir git -C {}/. commit -m "$2" \; > /dev/null 2>&1
echo "Pushing local changes to the distant HEAD branch...\n"
find ~/$1 -maxdepth 1 -type d -execdir git -C {}/. push origin master \; 2> /dev/null
echo "Automated push is done"
