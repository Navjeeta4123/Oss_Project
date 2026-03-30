
# Script 1: System Identity Report


# --- Variables ---
Student_Name="Navjeeta"
Software_Choice="Python"

# --- System info ---
Kernel=$(uname -r)
User_Name=$(whoami)
User_Home=$HOME
Uptime=$(uptime -p)
Distro=$(grep "PRETTY_NAME" /etc/os-release | cut -d'=' -f2 | tr -d '"')
Date_Time=$(date)

# --- Display ---
echo "=========================================="
echo "      System Identity Report              "
echo "=========================================="
echo " Open Source Audit - $Student_Name"
echo "------------------------------------------"
echo "Distro Name   : $Distro"
echo "Kernel Version: $Kernel"
echo "Current User  : $User_Name"
echo "Home Directory: $User_Home"
echo "System Uptime : $Uptime"
echo "Current Date  : $Date_Time"
echo "------------------------------------------"
echo "My Chosen Software: $Software_Choice"
echo "Note: This Operating System is covered by an Open Source License (likely GPL)."
echo "=========================================="
