#!/bin/bash

REMOTE_USER="root"
REMOTE_HOST="noctua"
REMOTE_CMD="/arsenal/bin/browser_xpra.sh"

# Start the Xpra server remotely
ssh ${REMOTE_USER}@${REMOTE_HOST} "${REMOTE_CMD}" &

# Give Xpra a second to start up
sleep 1.5

# Attach to the remote session from local
xpra attach --encoding=jpeg --quality=30 ssh:${REMOTE_USER}@${REMOTE_HOST}:100
