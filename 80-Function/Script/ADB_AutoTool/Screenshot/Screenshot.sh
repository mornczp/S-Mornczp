#!/bin/sh

# Create a Record directory if it doesn't exist
if [ ! -d "./Record" ]; then
    mkdir "./Record"
fi

# Create a subdirectory within Record with the current date
current_date=$(date +"%Y%m%d")
date_dir="./Record/$current_date"
if [ ! -d "$date_dir" ]; then
    mkdir "$date_dir"
fi

adb devices;
adb root;

# Start taking screenshots in a loop
while true; do
     timestamp=$(date +"%Y%m%d%H%M%S")
	 screenshot_path="./data/screenshot_$timestamp.png"
     local_screenshot_path="$date_dir/screenshot_$timestamp.png"
	
	 adb shell screencap -p "$screenshot_path"
     adb pull "$screenshot_path" "$local_screenshot_path"
     adb shell rm "$screenshot_path"
	
    # adb shell screencap -p ./data/screenshot_$timestamp.png
    # adb pull ./data/screenshot_$timestamp.png .
    # adb shell rm ./data/screenshot_$timestamp.png

# Wait for a specified interval before taking the next screenshot
    
	sleep 3
done
