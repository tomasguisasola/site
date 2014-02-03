#!/bin/sh

cd edit_here
find . -type f | while read file
do
   mkdir -p ../generated/`dirname $file`
   mkdir -p ../`dirname $file`
   echo "<!-- DO NOT EDIT THIS FILE, EDIT THE ONES UNDER pages/ INSTEAD -->" > ../generated/$file
   cat ../header.html $file ../footer.html >> ../generated/$file
   ln -nfs generated/$file ../$file
done

