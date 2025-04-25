#!/bin/bash
clear
# Get the username and greet the user
USER_NAME=$(whoami)
echo "Hello, $USER_NAME! Welcome to your mood journal."

# Ask if they want to log a new mood
read -p "Do you want to log a new mood? (y/n): " choice

if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
    read -p "What is your mood today?: " Mood
    echo " " >> Mood.txt
    echo "On this day at this time: $(date '+%m-%d-%Y %r')" >> Mood.txt
    echo "My Mood Was: '$Mood'" >> Mood.txt
    echo "Mood saved!"
else
    echo "No mood logged. Just checking in? That’s cool too."
fi

# Ask if they want to read past moods
echo " "
read -p "Would you like to read your past moods? (y/n): " view

if [[ "$view" == "y" || "$view" == "Y" ]]; then
    echo " "
    cat Mood.txt
else
    echo "Alright, have a good one!"
fi

# Final prompt before exit
echo ""
read -p "Press enter to exit."
clear
exit
