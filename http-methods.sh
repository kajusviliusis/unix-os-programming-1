#!/bin/sh

awk -F'"' '{ print $2 }' "$1" |
  awk '{ print $1 }' |
  sort |
  uniq -c |
  sort -nr
