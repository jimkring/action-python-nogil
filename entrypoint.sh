#!/bin/sh -l

pip install -r $1

if [ '$2' != '' ]; then
  eval $2
fi
if [ '$3' != '' ]; then
  eval $3
fi
if [ '$4' != '' ]; then
  eval $4
fi
if [ '$5' != '' ]; then
  eval $5
fi
if [ '$6' != '' ]; then
  eval $6
fi
if [ '$7' != '' ]; then
  eval $7
fi
