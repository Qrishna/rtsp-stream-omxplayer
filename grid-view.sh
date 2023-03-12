#!/bin/bash

SCREEN_WIDTH=3840
SCREEN_HEIGHT=2160

# Define an array of RTSP stream URLs
streams=(
  "rtsp://admin:admin@192.168.0.36/live"
  "rtsp://admin:admin@192.168.0.41/live"
  "rtsp://admin:admin@192.168.0.50/live"
  "rtsp://admin:admin@192.168.0.51/live"
  "rtsp://admin:admin@192.168.0.28/live"
  "rtsp://admin:admin@192.168.0.31/live"
)

# Define the streams
STREAM1="rtsp://admin:admin@192.168.0.36/live"
STREAM2="rtsp://admin:admin@192.168.0.41/live"
STREAM3="rtsp://admin:admin@192.168.0.50/live"
STREAM4="rtsp://admin:admin@192.168.0.51/live"
STREAM5="rtsp://admin:admin@192.168.0.28/live"
STREAM6="rtsp://admin:admin@192.168.0.31/live"



# Scale each stream to a proportional size that fits within the screen size
SCALE_FACTOR=$(echo "scale=2; $SCREEN_WIDTH/4/1920" | bc)
VIDEO_WIDTH=$(echo "scale=0; 1920*$SCALE_FACTOR" | bc)
VIDEO_HEIGHT=$(echo "scale=0; 1080*$SCALE_FACTOR" | bc)

