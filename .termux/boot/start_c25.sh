#!/data/data/com.termux/files/usr/bin/bash
# real compute cycle execution
source /data/data/com.termux/files/home/.bashrc 2>/dev/null
termux-wake-lock
tmux start-server
tmux kill-session -t c25 2>/dev/null
tmux new-session -d -s c25 "cd /data/data/com.termux/files/home/constellation-25 && node server.js"
echo "C25 BOOTED" >> /data/data/com.termux/files/home/agent_logs/boot.log

# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=start_c25.sh
