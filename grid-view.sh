#!/bin/bash

STREAM1="rtsp://admin:admin@192.168.0.36/live"
STREAM2="rtsp://admin:admin@192.168.0.41/live"
STREAM3="rtsp://admin:admin@192.168.0.50/live"
STREAM4="rtsp://admin:admin@192.168.0.51/live"
STREAM5="rtsp://admin:admin@192.168.0.28/live"
STREAM6="rtsp://admin:admin@192.168.0.31/live"

# first row
screen -dmS stream1 sh -c "omxplayer --refresh --no-osd --win \"0 0 640 360\" $STREAM1"
screen -dmS stream2 sh -c "omxplayer --no-osd --win \"640 0 1280 360\" $STREAM5"
screen -dmS stream3 sh -c "omxplayer --no-osd --win \"1280 0 1920 360\" $STREAM3"

# second row
screen -dmS stream4 sh -c "omxplayer --no-osd --win \"0 360 640 720\" $STREAM4"
screen -dmS stream5 sh -c "omxplayer --no-osd --win \"640 360 1280 720\" $STREAM2"
screen -dmS stream6 sh -c "omxplayer --no-osd --win \"1280 360 1920 720\" $STREAM6"

#experimental
#screen -dmS stream7 sh -c "omxplayer --no-osd --win \"0 720 640 1080\" $STREAM4"
#screen -dmS stream8 sh -c "omxplayer --no-osd --win \"640 720 1280 1080\" $STREAM2"
#screen -dmS stream9 sh -c "omxplayer --no-osd --win \"1280 720 1920 1080\" $STREAM6"