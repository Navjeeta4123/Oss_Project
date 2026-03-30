# The Open Source Audit: Python
A Capstone Project for the OSS NGMC Course.

## Student Information
- **Name:** Navjeeta Priyadarshini
- **Registration Number:** 24BHI10015
- **Course:** Open Source Software

## Project Overview
This repository contains a structured audit of **Python**, an open-source programming language managed by the Python Software Foundation. Python was chosen for its massive impact on the open-source ecosystem, its permissive license, and its philosophy of readability and simplicity ("The Zen of Python").

## Contents
1.  **OSS Audit Report (PDF):** A detailed analysis of Python's history, licensing (PSF License), and ecosystem.
2.  **Shell Scripts:** Five practical Linux automation scripts demonstrating core CLI skills.

## Shell Scripts Description

### 1. System Identity Report (`script1.sh`)
Provides a snapshot of the current Linux environment, including the kernel version, uptime, and the user's software choice.

### 2. FOSS Package Inspector (`script2.sh`)
Checks if Python is installed on the system, displays version details, and provides a summary of its purpose using a `case` statement.

### 3. Disk and Permission Auditor (`script3.sh`)
Scans critical system directories to report disk usage and file permissions, helping identify where Python-related configurations may reside.

### 4. Log File Analyzer (`script4.sh`)
A diagnostic tool that searches through system log files for specific keywords (like "ERROR" or "PYTHON") and provides a summary of occurrences.

### 5. Open Source Manifesto Generator (`script5.sh`)
An interactive script that gathers user input to generate a personalized "Open Source Manifesto" text file.

## How to Run the Scripts
1.  **Clone the repository:**
    ```bash
    git clone [your-repo-url]
    cd [repo-name]
    ```
2.  **Make the scripts executable:**
    ```bash
    chmod +x *.sh
    ```
3.  **Execute a script:**
    ```bash
    ./script1.sh
    ```

---
*Note: These scripts are designed for a Linux environment.*
