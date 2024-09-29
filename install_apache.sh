#!/bin/bash

# Update the system packages
echo "Updating system packages..."
sudo yum update -y

# Install Apache (httpd in CentOS/RHEL)
echo "Installing Apache web server..."
sudo yum install httpd -y

# Enable Apache to start on boot
echo "Enabling Apache to start on boot..."
sudo systemctl enable httpd

# Start Apache
echo "Starting Apache web server..."
sudo systemctl start httpd

# Check if Apache is running
echo "Checking Apache status..."
sudo systemctl status httpd

# Print completion message
echo "Apache installation and setup completed!"
