#!/bin/bash

# Fetch HTTP status code
http_code=$(curl -s -o /dev/null -w "%{http_code}" https://www.guvi.in)

# Print the HTTP status code
echo "HTTP Status Code: $http_code"

# Check if the HTTP status code indicates success (200-299)
if [[ $http_code -ge 200 && $http_code -lt 300 ]]; then
    echo "Success: The request to guvi.in was successful."
else
    echo "Failure: The request to guvi.in failed with status code $http_code."
fi