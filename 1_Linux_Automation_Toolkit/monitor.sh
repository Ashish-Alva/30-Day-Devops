#!/bin/bash

DATE=$(date +%d-%m-%y-%H-%M-%S)
REPORT="reports/report-$DATE.txt"

echo "Linux Monitoring Report - $DATE" > $REPORT
echo "-----------------------------------" >> $REPORT

echo "CPU Usage:" >> $REPORT
uptime >> $REPORT

echo "DISK USAGE:" >> $REPORT
df -h >> $REPORT

echo "MEMORY USAGE:" >> $REPORT
free -h >> $REPORT

echo "TOP 5 MEMORY CONSUMING PROCESSES:" >> $REPORT
ps aux | sort -rn -k4 | head -5 >> $REPORT

echo "" >> $REPORT
echo "Report generated successfully."