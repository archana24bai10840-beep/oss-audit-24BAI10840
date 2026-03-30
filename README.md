# OSS Audit — Firefox
### Open Source Software | VIT | 24BAI10840

**Student Name:** Archana Santhosh
**Registration Number:** 24BAI10840
**Chosen Software:** Mozilla Firefox
**Course:** Open Source Software (OSS NGMC)

---

## About This Project
This repository contains five shell scripts written as part of the
Open Source Audit capstone project. The scripts demonstrate practical
Linux skills and explore Mozilla Firefox as an open-source software.

---

## Scripts Overview

| Script | Name | Description |
|--------|------|-------------|
| script1.sh | System Identity Report | Displays system info, kernel, uptime, user, and license details |
| script2.sh | FOSS Package Inspector | Checks if Firefox is installed, shows version and philosophy note |
| script3.sh | Disk and Permission Auditor | Audits key system directories and Firefox config folder |
| script4.sh | Log File Analyzer | Reads a log file and counts keyword matches |
| script5.sh | Manifesto Generator | Interactively generates a personal open source philosophy statement |

---

## How to Run

### Prerequisites
- A Linux system (Ubuntu/Debian recommended)
- Bash shell
- Firefox installed (`sudo apt install firefox`)

### Steps

**Clone the repository:**
```bash
git clone https://github.com/YOURUSERNAME/oss-audit-24BAI10840
cd oss-audit-24BAI10840
```

**Give execute permission to all scripts:**
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

**Run each script:**
```bash
bash script1.sh
bash script2.sh
bash script3.sh
bash script4.sh /var/log/syslog error
bash script5.sh
```

---

## Dependencies

| Tool | Purpose |
|------|---------|
| bash | Shell interpreter |
| firefox | Subject of the audit |
| grep | Log file keyword search |
| awk | Text field extraction |
| du / df | Disk usage reporting |
| dpkg / rpm | Package inspection |
| git | Version control |

---

## Notes
- Script 4 takes two arguments: log file path and keyword
- Default keyword for Script 4 is `error`
- Script 5 is interactive — it will ask you three questions
- All scripts include inline comments explaining each section
