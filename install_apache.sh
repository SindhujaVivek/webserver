#!/bin/bash

# Update package lists
sudo apt update -y

# Install Apache web server
sudo apt install apache2 -y

# Enable Apache service to start on boot
sudo systemctl enable apache2

# Start Apache service
sudo systemctl start apache2

# Print the status of Apache service
sudo systemctl status apache2

# Print message on successful installation
echo "Apache web server installed and running!"
