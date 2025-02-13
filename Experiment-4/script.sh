#!/bin/bash

suspicious_ips=("203.0.113.45" "198.51.100.23" "10.1.1.7")
log_file="ips.log"
found=false

for ip in "${suspicious_ips[@]}"; do
    if grep -q "^$ip" "$log_file"; then
        echo "Suspicious IP found: $ip"
        found=true
    fi
done

if [ "$found" = false ]; then
    echo "No suspicious IPs found"
fi