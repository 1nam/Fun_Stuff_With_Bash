#!/bin/bash
clear

# Get the username and greet the user with a fun intro
USER_NAME=$(whoami)
echo "🔥🔥🔥 Hey, $USER_NAME! Welcome to the Sizzling Hot Flash Journal. 🔥🔥🔥"
echo "Don't worry, we're here to help you survive the *heat* — in more ways than one."

# Ask if they experienced a hot flash
read -p "Did you experience the fiery wrath of a hot flash today? (y/n): " choice

if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
    echo "Let's log your sizzling adventure! 🌶️"

    # Ask for the intensity of the flash
    read -p "On a scale of 1-10, how much did you feel like you were about to burst into flames? (1 = 'mild simmer', 10 = 'volcanic eruption'): " intensity
    read -p "What time of day did you experience this fiery explosion? (e.g., 'morning', 'midnight meltdown'): " time_of_day
    read -p "Any known trigger? (e.g., 'stress', 'someone said 'hot flash' too loudly', 'no idea', etc.): " trigger
    read -p "How was your mood before the flash? (e.g., 'chill like an ice cube', 'grumpy like a bear', etc.): " mood_before
    read -p "And after? (e.g., 'cool as a cucumber', 'melted like a puddle'): " mood_after

    # Save the data with some extra flair
    echo " " >> HotFlashJournal.txt
    echo "----------------------------------------" >> HotFlashJournal.txt
    echo "Date: $(date '+%m-%d-%Y %r')" >> HotFlashJournal.txt
    echo "🔥 Intensity: $intensity/10 — Feel free to add 'volcanic eruption' as your new mood descriptor." >> HotFlashJournal.txt
    echo "Time of Day: $time_of_day — Was it 'afternoon inferno' or 'midnight heatwave'? 🤔" >> HotFlashJournal.txt
    echo "Trigger: $trigger — Was it something that set you off or just 'because menopause'? 😂" >> HotFlashJournal.txt
    echo "Mood Before: $mood_before — Because we all know, a 'chill' mood is a rare gem." >> HotFlashJournal.txt
    echo "Mood After: $mood_after — Hopefully you didn't turn into a puddle on the floor!" >> HotFlashJournal.txt
    echo "----------------------------------------" >> HotFlashJournal.txt
    echo "🔥🔥🔥 Hot flash logged successfully! Stay cool out there, warrior!" >> HotFlashJournal.txt
else
    echo "No fiery hot flash today? Well, lucky you. Stay chill! 😎"
fi

# Ask if they want to read their past logs
echo " "
read -p "Want to relive your past moments of fiery glory? (y/n): " view

if [[ "$view" == "y" || "$view" == "Y" ]]; then
    echo "Here’s a look back at your sizzling past:"
    echo "🔥🔥🔥🔥🔥"
    cat HotFlashJournal.txt
else
    echo "No flashbacks? Just as well, you don't need to relive the heat. Cool down and move on! 🌬️"
fi

# Final exit message with a cool tip
echo ""
read -p "Press enter to exit. Remember to drink water and keep cool, or we might need to get you an ice pack. ❄️"
clear
exit
