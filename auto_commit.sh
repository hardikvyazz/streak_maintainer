#!/bin/bash

cd /home/ubuntu/Playground/streak_maintainer  # Replace with the actual path to your repo

RANDOM_COMMITS=$((RANDOM % 3 + 2))  # Generates a number between 2 and 4

for ((i=1; i<=RANDOM_COMMITS; i++)); do
    echo "Automated commit #$i on $(date)" >> streak.txt  # This file will track commits
    git add streak.txt
    git commit -m "Maintaining streak: $(date)"
done

git push origin main  # Change 'main' to your branch name if needed
