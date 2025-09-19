#!/bin/bash

# Check if port 1313 is in use and kill the process if it is.
# The `-s` flag for `kill` prevents an error message if no process is found.
if lsof -ti:1313 > /dev/null
then
    echo "Port 1313 is in use. Attempting to free it..."
    kill -9 $(lsof -ti:1313)
    sleep 1 # Give the OS a moment to release the port
    echo "Port 1313 has been freed."
fi

# Start the Hugo server and explicitly set the port.
echo "Starting Hugo server..."
hugo server -D --bind=0.0.0.0 --port 1313
