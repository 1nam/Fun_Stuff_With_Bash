#!/bin/bash
clear

# Get the username and greet them with some flair
USER_NAME=$(whoami)
echo "🎶🎉 Welcome to the Twerking Addiction Journal, $USER_NAME! Let's get that booty moving! 💃"

# Ask if they twerked today
read -p "Did you twerk today? (y/n): " choice

if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
    echo "Nice! Let's log that booty action! 🍑"

    # Ask how many twerks they did
    read -p "How many twerks did you bust today? (1 = 'just a couple', 10 = 'full-on performance'): " twerk_count
    read -p "How long did you twerk for? (in seconds): " twerk_duration
    read -p "Was this a casual groove or a performance-worthy twerk? (casual / performance): " twerk_type
    read -p "How did you feel before you started twerking? (e.g., 'chill', 'ready to slay', 'sleepy'): " mood_before
    read -p "And after? (e.g., 'energized', 'exhausted', 'sore'): " mood_after

    # Save the data with some sass
    echo " " >> TwerkingJournal.txt
    echo "----------------------------------------" >> TwerkingJournal.txt
    echo "Date: $(date '+%m-%d-%Y %r')" >> TwerkingJournal.txt
    echo "Booty Moves Today: $twerk_count twerks (I hope you didn’t break a sweat!)" >> TwerkingJournal.txt
    echo "Twerk Duration: $twerk_duration seconds (a marathon or just a warm-up?)" >> TwerkingJournal.txt
    echo "Twerk Style: $twerk_type (Was this a casual groove or full performance?)" >> TwerkingJournal.txt
    echo "Mood Before: $mood_before (Were you ready to twerk or just trying to avoid the couch?)" >> TwerkingJournal.txt
    echo "Mood After: $mood_after (Did you feel like a superstar or just want to nap?)" >> TwerkingJournal.txt
    echo "----------------------------------------" >> TwerkingJournal.txt
    echo "🎉💃 Twerk session logged! Your booty is on fire!" >> TwerkingJournal.txt
else
    echo "No twerking today? Don't worry, we all need a break! Get ready for tomorrow! 💃🍑"
fi

# Ask if they want to see past twerks
echo " "
read -p "Want to relive your past twerking glory? (y/n): " view

if [[ "$view" == "y" || "$view" == "Y" ]]; then
    echo "Check out your twerking history. This is your legacy!"
    echo "🔥🔥🔥🔥"
    cat TwerkingJournal.txt
else
    echo "Alright, no flashbacks. Keep those moves fresh for the future! 🔥"
fi

# Final exit message with a dancing tip
echo ""
read -p "Press enter to exit. Don't forget to stretch before your next twerk sesh! 🍑"
clear
exit
