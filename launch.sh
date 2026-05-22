#!/bin/bash
# Arcade Volleyball launcher — runs via Platypus
# Game files and dosbox-x.conf live in Resources/ alongside this script.

RESOURCES="$(cd "$(dirname "$0")/../Resources" && pwd)"

# Locate DOSBox-X — try .app bundle first, then Homebrew, then PATH
DOSBOX_X=""

if [ -x "/Applications/DOSBox-X.app/Contents/MacOS/DOSBox-X" ]; then
    DOSBOX_X="/Applications/DOSBox-X.app/Contents/MacOS/DOSBox-X"
elif command -v dosbox-x &>/dev/null; then
    DOSBOX_X="$(command -v dosbox-x)"
elif [ -x "/opt/homebrew/bin/dosbox-x" ]; then
    DOSBOX_X="/opt/homebrew/bin/dosbox-x"
elif [ -x "/usr/local/bin/dosbox-x" ]; then
    DOSBOX_X="/usr/local/bin/dosbox-x"
fi

if [ -z "$DOSBOX_X" ]; then
    osascript -e 'display alert "DOSBox-X not found" message "Please install DOSBox-X:\n\n  brew install dosbox-x\n\nor download it from https://dosbox-x.com" as critical'
    exit 1
fi

cd "$RESOURCES"
exec "$DOSBOX_X" -conf "$RESOURCES/dosbox-x.conf"
