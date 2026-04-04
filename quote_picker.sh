#!/bin/bash

# get directory
WBQ_DIR=$(dirname "$(readlink -f "$0")")

# process entries
grep '[^[:space:]]' "$WBQ_DIR/quotes.txt" > "/tmp/quotes_no_comments.txt"
sed -i '/^#/d' "/tmp/quotes_no_comments.txt"

# get random(-ish) line number
PICKED=$((1 + $RANDOM % $(sed -n '$=' "/tmp/quotes_no_comments.txt")))

# take a specific line
head -$PICKED "/tmp/quotes_no_comments.txt" | tail +$PICKED > "$WBQ_DIR/picked.txt"

# repeat if somehow it get empty string
if [ $'(cat "$WBQ_DIR/picked.txt")' == '' ] ; 
then
    bash "$0"
fi