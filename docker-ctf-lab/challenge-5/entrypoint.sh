#!/bin/sh

# === Detect CPU Limit (supports cgroup v1 and v2) ===
cpu_limit=0

# cgroup v1 path
if [ -f /sys/fs/cgroup/cpu/cpu.cfs_quota_us ]; then
    cpu_quota=$(cat /sys/fs/cgroup/cpu/cpu.cfs_quota_us)
    cpu_period=$(cat /sys/fs/cgroup/cpu/cpu.cfs_period_us)
    if [ "$cpu_quota" -gt 0 ] 2>/dev/null && [ "$cpu_period" -gt 0 ] 2>/dev/null; then
        cpu_limit=$(expr "$cpu_quota" / "$cpu_period")
    fi
# cgroup v2 path
elif [ -f /sys/fs/cgroup/cpu.max ]; then
    cpu_max=$(cat /sys/fs/cgroup/cpu.max)
    quota=$(echo "$cpu_max" | cut -d' ' -f1)
    period=$(echo "$cpu_max" | cut -d' ' -f2)
    if [ "$quota" != "max" ] && [ "$quota" -gt 0 ] 2>/dev/null && [ "$period" -gt 0 ] 2>/dev/null; then
        cpu_limit=$(expr "$quota" / "$period")
    fi
fi

# === Detect Memory Limit (supports cgroup v1 and v2) ===
mem_limit=""

if [ -f /sys/fs/cgroup/memory/memory.limit_in_bytes ]; then
    mem_limit=$(cat /sys/fs/cgroup/memory/memory.limit_in_bytes)
elif [ -f /sys/fs/cgroup/memory.max ]; then
    mem_limit=$(cat /sys/fs/cgroup/memory.max)
fi

echo "Detected CPU limit: $cpu_limit"
echo "Memory limit (bytes): $mem_limit"

if [ "$cpu_limit" -eq 1 ] && [ -n "$mem_limit" ] && [ "$mem_limit" -le 536870912 ]; then
    echo "CTF{resource_limits_applied_correctly}" > /flag.txt
else
    echo "Resource limits not applied correctly"
fi

[ -f /flag.txt ] && cat /flag.txt
