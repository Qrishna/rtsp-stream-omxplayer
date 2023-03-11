#!/bin/bash

# Define an array of RTSP stream URLs
streams=(
  "rtsp://admin:admin@192.168.0.36/live"
  "rtsp://admin:admin@192.168.0.41/live"
  "rtsp://admin:admin@192.168.0.50/live"
  "rtsp://admin:admin@192.168.0.51/live"
  "rtsp://admin:admin@192.168.0.28/live"
  "rtsp://admin:admin@192.168.0.31/live"
)

# Set the output device
output="-o hdmi"

# Set the initial stream index to 0
index=0

while true
do
    # Get the current stream URL
    stream="${streams[$index]}"

    # Start omxplayer with the current RTSP stream
    omxplayer $output "$stream" &

    # Wait for 15 seconds
    sleep 30

    # Kill the currently playing stream
    pkill omxplayer

    # Increment the stream index
    index=$(( (index + 1) % ${#streams[@]} ))
done

