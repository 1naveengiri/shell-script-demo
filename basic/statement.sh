#!/bin/bash

# Script to create demo of conditional statement in shell script

number=11
if [ $number>10 ] #start if statement 
then
	echo Number is greater
else 
	echo Number is smaller 
fi # close if statement
