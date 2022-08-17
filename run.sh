#!/bin/bash

# Clear any existing running processes
pm2 delete all

# Starting Frontend in No-Demon Mode
echo "[FRONTEND] Starting Server ..."
pm2 serve client-draw/build 3000 --spa 

# Starting backend in No-Demon Mode
echo "[BACKEND] Starting Server ..."
pm2 start server-draw/index.js --no-daemon