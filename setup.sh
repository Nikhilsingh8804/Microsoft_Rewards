#!/bin/bash

echo "MicrosoftRewardsBot"
echo "By @AKhilRaghav0"

# Install packages from requirements.txt
if [ -f "requirements.txt" ]; then
  sudo apt-get update
  sudo apt-get install -y python3-pip
  pip3 install -r requirements.txt
else
  echo "requirements.txt not found."
fi

# Check if Google Chrome is already installed
if ! which google-chrome > /dev/null; then
  # Install Google Chrome
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo apt-get install ./google-chrome-stable_current_amd64.deb
else
  echo "Google Chrome is already installed."
fi

# Fix broken dependencies
sudo apt-get -f install

echo "Installation complete."

echo "Select an option:"
echo "1. Headless mode (fast)"
echo "2. GUI mode (fast)"
echo "3. GUI mode (slow)"
echo "4. Headless mode (slow)"

read -p "Enter your choice: " choice

case "$choice" in
  1) command="python3 MicrosoftRewardsBot.py --headless --fast";;
  2) command="python3 MicrosoftRewardsBot.py --fast";;
  3) command="python3 MicrosoftRewardsBot.py";;
  4) command="python3 MicrosoftRewardsBot.py --headless";;
  *) echo "Invalid choice."; exit 1;;
esac

# Execute the command
$command

echo "Execution complete."

