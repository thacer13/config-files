#!/bin/bash

set -euo pipefail

ROOT_SEARCH="$HOME"
RECURSIVE_SEARCH=(
	"$HOME/Documents"
	"$HOME/Downloads"
	"$HOME/Music"
	"$HOME/Pictures"
	"$HOME/Videos"
)

EXTENSIONS=( "jpg" "jpeg" "png" "gif" "webp" "bmp" "webm" "mp3" "ogg" "wav" "mp4" "m4v" "avi" "flv" "mov" "mkv" "pdf" "epub" "djvu" "txt" )

FIND_EXPR=()
for ext in "${EXTENSIONS[@]}"; do
	FIND_EXPR+=( -o -iname "*.$ext" )
done

FIND_EXPR=( "${FIND_EXPR[@]:1}" )

ROOT_FILES=$(find "$ROOT_SEARCH" -maxdepth 1 \( "${FIND_EXPR[@]}" \) 2>/dev/null || true)

RECURSIVE_FILES=""
for dir in "${RECURSIVE_SEARCH[@]}"; do
	if [ -d "$dir" ]; then
    	TEMP_FILES=$(find "$dir" -type f \( "${FIND_EXPR[@]}" \) 2>/dev/null || true)
    	RECURSIVE_FILES+="$TEMP_FILES"$'\n'
	fi
done

FILES=$(printf '%s\n%s' "$ROOT_FILES" "$RECURSIVE_FILES" | grep -v '^[[:space:]]*$' | sort -f)

FILES_WITH_TILDE=$(echo "$FILES" | sed "s|^$HOME|~|")

if [ -z "$FILES_WITH_TILDE" ]; then
	notify-send "File Search" "No matching files found"
	exit 1
fi

SELECTION=$(echo "$FILES_WITH_TILDE" | rofi -dmenu -i -p "Search Files:") || true

if [ -n "$SELECTION" ]; then
	FULL_PATH=$(echo "$SELECTION" | sed "s|^~|$HOME|")
	if [ -f "$FULL_PATH" ]; then
    	xdg-open "$FULL_PATH"
	else
    	notify-send "File Search" "Selected file not found: $SELECTION"
	fi
fi


