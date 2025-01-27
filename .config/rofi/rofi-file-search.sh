#!/bin/bash

# Directories to search
ROOT_SEARCH="$HOME"
RECURSIVE_SEARCH=(
	"$HOME/Documents"
	"$HOME/Downloads"
	"$HOME/Music"
	"$HOME/Pictures"
	"$HOME/Videos"
)

# File extensions to include
EXTENSIONS="*.jpg *.jpeg *.png *.gif *.webp *.mp3 *.wav *.mp4 *.mkv *.pdf *.epub *.txt"

# Gather files in $HOME without subdirectories
ROOT_FILES=$(find "$ROOT_SEARCH" -maxdepth 1 \( $(echo "$EXTENSIONS" | sed 's/ / -o -iname /g' | sed 's/^/-iname /') \) 2>/dev/null)

# Gather files in other directories, including subdirectories
RECURSIVE_FILES=$(find "${RECURSIVE_SEARCH[@]}" -type f \( $(echo "$EXTENSIONS" | sed 's/ / -o -iname /g' | sed 's/^/-iname /') \) 2>/dev/null)

# Combine results, remove empty lines, and sort
FILES=$(echo -e "$ROOT_FILES\n$RECURSIVE_FILES" | grep -v '^$' | sort -f)

# Compact display
FILES_WITH_TILDE=$(echo "$FILES" | sed "s|^$HOME|~|")

# Use rofi in dmenu mode to display the files
SELECTION=$(echo "$FILES_WITH_TILDE" | rofi -dmenu -i -p "Search Files:")

# If a selection was made, convert back and open the file
[ -n "$SELECTION" ] && xdg-open "$(echo "$SELECTION" | sed "s|^~|$HOME|")"
