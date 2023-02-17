# Extract CPU information using lscpu
CPU_MODEL=$(lscpu | grep "Model name:" | awk -F ': ' '{print $2}' | sed 's/^[ \t]*//')
CPU_THREADS=$(lscpu | grep "CPU(s):" | awk -F ': ' '{print $2}' | head -n 1 | sed 's/^[ \t]*//')


# Format output string
OUTPUT="$CPU_MODEL ($CPU_THREADS)"

# Print output
echo "$OUTPUT"
