#!/bin/bash

# Set the RTSP stream URL
STREAM1="rtsp://admin:admin@192.168.0.36/live"

# Start omxplayer with the RTSP stream
omxplayer -o hdmi $STREAM1
