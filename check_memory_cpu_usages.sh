#!/bin/bash

date=$(date "+%d-%m-%Y %H:%M:%S")
cpu_usages=$(top -bn 1 | grep "%Cpu(s)" | awk '{print 100 - $8}')
cpu_usages=${cpu_usages%.*}
memory_usages=$(free | awk '/mem/ {printf("%.0f"), $3/$2 * 100}')
memory_available=$((100 - memory_usages))

system_status="OK"

echo "${cpu_usages}: ${memory_available}"
if [ $cpu_usages -gt 80 ]; then
	system_status="High CPU usage: ${cpu_usages}%"
elif [ $memory_available -lt 20 ]; then
	system_status="Low Memory available: ${memory_available}%"
fi

echo "$date | CPU: ${cpu_usages}% | Memory Available: ${memory_available}% | Status: $system_status" >> system_health.log
