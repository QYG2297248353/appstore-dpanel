#!/bin/bash

if [ -f .env ]; then
  source .env

  # setup-1 add default values
  CURRENT_DIR=$(pwd)
  sed -i '/^ENV_FILE=/d' .env
  sed -i '/^GLOBAL_ENV_FILE=/d' .env
  echo "ENV_FILE=${CURRENT_DIR}/.env" >> .env
  echo "GLOBAL_ENV_FILE=${CURRENT_DIR}/envs/global.env" >> .env
  echo "APP_ENV_FILE=${CURRENT_DIR}/envs/dify.env" >> .env

  # setup-2 update dir permissions
  mkdir -p "$DIFY_ROOT_PATH"

  if [ -d "conf" ]; then
      find conf -type f | while read -r file; do
        dest="$DIFY_ROOT_PATH/${file#conf/}"
        if [ ! -e "$dest" ]; then
          mkdir -p "$(dirname "$dest")"
          cp "$file" "$dest"
        fi
      done
      echo "Conf files copied to $DIFY_ROOT_PATH."
    else
      echo "Warning: conf directory not found."
    fi

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
