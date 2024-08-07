# Define the target directory
TARGET_DIR="$HOME/.local/img"

# Check if the directory exists
if [ ! -d "$TARGET_DIR" ]; then
    mkdir -p "$TARGET_DIR"
fi

# Take the screenshot and move it to the target directory
scrot 'arch-%Y-%m-%d_screenshot.png' -e 'mv $f '"$TARGET_DIR"
