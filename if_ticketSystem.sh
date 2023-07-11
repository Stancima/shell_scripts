#!/bin/bash
# This script is a ticketing system

echo "Welcome to the rollercoaster 2023"
declare -i mybill=0
read -p "What is your height in cm? " height

if (($height >= 120)); then
    echo "You can go on a ride on the rollercoaster"
    read -p "What is your age? " age
    if (($age < 12)); then
        mybill=$((mybill + 5))
        echo "Child tickets are 5 dollars"
    elif (($age <= 18)); then
        mybill=$((mybill + 7))
        echo "Youth tickets are 7 dollars"
    elif (($age >= 60)); then
        echo "Ticket is free, have a ride on us"
    else
        mybill=$((mybill + 12))
        echo "Adult tickets are 12 dollars"
    fi
    echo "Your final bill is $mybill"
else
    echo "Sorry, you are not tall enough to go on a ride..."
fi
