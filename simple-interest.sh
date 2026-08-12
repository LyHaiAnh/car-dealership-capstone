#!/bin/bash
# Description: Script to calculate simple interest
# Formula: Interest = (Principal * Rate * Time) / 100

echo "Enter the principal:"
read p
echo "Enter rate of interest per annum:"
read r
echo "Enter time period in years:"
read t

s=$(echo "scale=2; $p * $r * $t / 100" | bc -l 2>/dev/null || expr $p \* $r \* $t / 100)
echo "The simple interest is: $s"
