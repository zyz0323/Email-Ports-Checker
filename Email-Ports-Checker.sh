#!/bin/bash

# Check if the required ports are open

# Function to check a port
check_port() {
    local port=$1
    if nc -z localhost $port; then
        echo "Port $port is open"
    else
        echo "Port $port is closed"
    fi
}

# Main script
echo "Checking ports 25, 465, and 587..."

# Check port 25 (SMTP)
check_port 25

# Check port 465 (SMTPS)
check_port 465

# Check port 587 (Submission)
check_port 587

echo "Port check complete."
