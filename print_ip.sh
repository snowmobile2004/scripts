#!/bin/bash

# Retrieve the IP address of the default interface
ip_address=$(ip -o -4 addr show scope global | awk '{split($4, a, "/"); print a[1]}')

# Print the IP address
echo "Server IP Address: $ip_address"
