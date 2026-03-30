
# Script 2: FOSS Package Inspector


Package="python3"

# Check if package is installed

if command -v $Package >/dev/null 2>&1; then
    echo "FOSS Package: $Package is installed."
    
    # Try to get version info
    if command -v dpkg >/dev/null 2>&1; then
        # Fixed awk command: one line to avoid string termination errors
        dpkg -l | grep -E "^ii  $Package " | awk '{print "Version: " $3 " | Summary: " $4 " " $5}'
    elif command -v rpm >/dev/null 2>&1; then
        rpm -qi $PACKAGE | grep -E "Version|License|Summary"
    fi
else
    echo "$Package is NOT installed."
fi

# Logic for software description
case $Package in
    python3)
        echo "------------------------------------------"
        echo "Software: Python 3"
        echo "Purpose : A versatile high-level programming language."
        echo "Mission : Designed for readability and ease of use."
        echo "Open Source: Managed by the Python Software Foundation (PSF)."
        ;;
    *)
        echo "No information found for $Package."
        ;;
esac
echo "------------------------------------------"
