#!/bin/bash

if [ -f .env ]; then
  source .env

  # setup-1 add default values
  CURRENT_DIR=$(pwd)
  sed -i '/^ENV_FILE=/d' .env
  sed -i '/^GLOBAL_ENV_FILE=/d' .env
  echo "ENV_FILE=${CURRENT_DIR}/.env" >> .env
  echo "GLOBAL_ENV_FILE=${CURRENT_DIR}/envs/global.env" >> .env
  echo "APP_ENV_FILE=${CURRENT_DIR}/envs/mastodon.env" >> .env

  # setup-2 add update permission
  chown -R 991:991 "$MASTODON_ROOT_PATH"

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
