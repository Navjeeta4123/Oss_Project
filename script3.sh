
# Script 3: Disk and Permission Auditor


Dirs=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "      Directory Audit Report              "
echo "=========================================="

for Dir in "${Dirs[@]}"; do
    if [ -d "$Dir" ]; then
        # Getting the directory's permissions and size
       
        Perms=$(ls -ld "$Dir" | awk '{print $1}')
        Owner=$(ls -ld "$Dir" | awk '{print $3}')
        Size=$(du -sh "$Dir" 2>/dev/null | cut -f1)
        
        echo "$Dir => Permissions: $Perms | Owner: $Owner | Size: $Size"
    else
        echo "Directory $Dir does not exist on this system."
    fi
done

echo "------------------------------------------"
echo "Searching for the Python software location..."
# which -a displays all paths for the command
Python_Loc=$(which python3)
if [ -n "$Python_Loc" ]; then
    echo "Python is located at: $Python_Loc"
    ls -l "$Python_Loc"
else
    echo "Python binary not found."
fi
echo "=========================================="
