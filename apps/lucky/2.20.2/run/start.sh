#!/bin/sh

PORT=16601

/app/lucky -c /goodluck/lucky.conf -runInDocker &
MAIN_PID=$!

echo "Lucky main started with PID $MAIN_PID"

echo "Waiting for lucky to listen on port ${PORT}..."
while ! nc -z 127.0.0.1 "${PORT}" 2>/dev/null; do
    sleep 1
done

echo "Lucky port ${PORT} is up"

echo "Running: /app/lucky -rSetHttpAdminPort=${PANEL_APP_PORT_HTTP}"
/app/lucky -rSetHttpAdminPort="${PANEL_APP_PORT_HTTP}"
echo "Running: /app/lucky -rSetHttpsAdminPort=${PANEL_APP_PORT_HTTP}"
/app/lucky -rSetHttpsAdminPort="${PANEL_APP_PORT_HTTP}"

wait $MAIN_PID
