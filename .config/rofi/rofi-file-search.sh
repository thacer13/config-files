#!/bin/bash

# Set error handling
set -euo pipefail

# Define search paths
ROOT_SEARCH="$HOME"
RECURSIVE_SEARCH=(
	"$HOME/Documents"
	"$HOME/Downloads"
	"$HOME/Music"
	"$HOME/Pictures"
	"$HOME/Videos"
)

# Define file extensions to search for
EXTENSIONS=( "jpg" "jpeg" "png" "gif" "webp" "bmp" "webm" "mp3" "ogg" "wav" "mp4" "m4v" "avi" "flv" "mov" "mkv" "pdf" "epub" "djvu" "txt" )

# Build the find expression for extensions
FIND_EXPR=()
for ext in "${EXTENSIONS[@]}"; do
	FIND_EXPR+=( -o -iname "*.$ext" )
done
# Remove the first "-o" since we don't need it
FIND_EXPR=( "${FIND_EXPR[@]:1}" )

# Search in root directory
ROOT_FILES=$(find "$ROOT_SEARCH" -maxdepth 1 \( "${FIND_EXPR[@]}" \) 2>/dev/null || true)

# Search in recursive directories
RECURSIVE_FILES=""
for dir in "${RECURSIVE_SEARCH[@]}"; do
	if [ -d "$dir" ]; then
    	TEMP_FILES=$(find "$dir" -type f \( "${FIND_EXPR[@]}" \) 2>/dev/null || true)
    	RECURSIVE_FILES+="$TEMP_FILES"$'\n'
	fi
done

# Combine and clean up results
FILES=$(printf '%s\n%s' "$ROOT_FILES" "$RECURSIVE_FILES" | grep -v '^[[:space:]]*$' | sort -f)

# Replace $HOME with tilde
FILES_WITH_TILDE=$(echo "$FILES" | sed "s|^$HOME|~|")

# Check if we have any files before calling rofi
if [ -z "$FILES_WITH_TILDE" ]; then
	notify-send "File Search" "No matching files found"
	exit 1
fi

# Call rofi and handle the selection
SELECTION=$(echo "$FILES_WITH_TILDE" | rofi -dmenu -i -p "Search Files:") || true

if [ -n "$SELECTION" ]; then
	FULL_PATH=$(echo "$SELECTION" | sed "s|^~|$HOME|")
	if [ -f "$FULL_PATH" ]; then
    	xdg-open "$FULL_PATH"
	else
    	notify-send "File Search" "Selected file not found: $SELECTION"
	fi
fi


