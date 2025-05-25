#!/bin/bash

# Fetch the HTTP status code
status_code=$(curl -o /dev/null -s -w "%{http_code}\n" https://guvi.in)

# Print the status code
echo "HTTP Status Code: $status_code"

# Check if it's a success or failure
if [[ "$status_code" -ge 200 && "$status_code" -lt 300 ]]; then
  echo "Success: The request was successful."
else
  echo "Failure: The request failed."
fi
