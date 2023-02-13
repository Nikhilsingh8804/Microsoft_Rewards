# Rewards_VPS

## Introduction

This is a simple bash script that automates the installation process of the required packages and Google Chrome. The script also provides options to execute the Microsoft Rewards Bot in various modes, including headless and GUI modes with different speeds.

## Requirements

- A Debian-based Linux operating system (such as Ubuntu)
- pip3
- python3

## Installation

1. Clone or download the repository to your local machine.
2. Open a terminal and navigate to the repository's directory.
3. Make the script executable by running `chmod +x launch.sh` in the terminal.
4. Run the script as `sudo` by typing `sudo ./launch.sh` in the terminal.

## Features

- Installs required packages from `requirements.txt`.
- Installs Google Chrome if it's not already installed.
- Fixes any broken dependencies in the system.
- Provides options to execute the Microsoft Rewards Bot in different modes.

## Usage

Upon running the script, you will be prompted to select one of the following options:

1. Headless mode (fast)
2. GUI mode (fast)
3. GUI mode (slow)
4. Headless mode (slow)

Enter your choice and the script will execute the Microsoft Rewards Bot in the selected mode.

