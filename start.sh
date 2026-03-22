#!/bin/bash

echo "🚀 Starting Minecraft Server + Playit..."

# chạy playit (tunnel)
./playit --secret cbb26801209a07baa311a356af80072acc78161547ba24d0a3d8f7fb25eb6ccd &

# đợi playit connect
sleep 5

# chạy server minecraft
java -Xms512M -Xmx1400M \
-XX:+UseG1GC \
-XX:+ParallelRefProcEnabled \
-XX:MaxGCPauseMillis=50 \
-XX:+UnlockExperimentalVMOptions \
-XX:+DisableExplicitGC \
-jar server.jar nogui
