
# Script 4: Log File Analyzer

# Usage: ./script4.sh /var/log/syslog "error"

# --- Input Handling ---
# Use the first argument as the log file, or default to syslog
Logfile=${1:-"/var/log/syslog"}
# Use the second argument as the keyword, or default to "error"
Keyword=${2:-"error"}
Count=0

# Check if the log file exists and is readable
if [ ! -r "$Logfile" ]; then
    echo "Error: File $Logfile not found or not readable."
    echo "Usage: ./script4.sh [Logfile] [Keyword]"
    exit 1
fi

echo "=========================================="
echo " Analyzing Log File: $Logfile"
echo " Searching for Keyword: $Keyword"
echo "=========================================="

# Reading the file line-by-line
while IFS= read -r LINE; do
    # -i: case insensitive, -q: quiet (only returns exit code)
    if echo "$LINE" | grep -iq "$Keyword"; then
        Count=$((COUNT + 1))
    fi
done < "$Logfile"

echo "------------------------------------------"
echo "Keyword '$Keyword' found $Count times in $Logfile."
echo "Last 5 matches found:"
grep -i "$Keyword" "$Logfile" | tail -n 5
echo "=========================================="
