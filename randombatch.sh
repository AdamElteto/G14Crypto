#!/bin/bash
#This script generates 1000 100kB files using /dev/random as a source.
#Files will be saved in the directory the script is executed from.
#The files are assigned the ".rand" extension.
#The total number of files can be adjusted by changing the  "1000" value.
#The size of the output files can be adjusted by changing the "count=" value.
x=1
  for x in {1..1000}; do
    dd if=/dev/random of=./random$(printf "%04d" $x).rand bs=1k count=100 iflag=fullblock
  let x=x+1
done
