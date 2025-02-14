#!/bin/bash


hero="rancho"
villain="virus"

echo "three idiots ks villian hai $hero"

echo "villain hai $villain"

echo "current user is $USER"

read -p "Rancho ka pura naam kya tha" fullname

echo "Rancho ka pura nam: $fullname tha"

#arguments


#./3-idiots.sh raju farhan  rancho


echo "Movie ka nam: $0"
echo "First idiot: $1"
echo "Second Idiot: $2"
echo "Third Idiot: $3"
echo "Three idiots are: $@"
