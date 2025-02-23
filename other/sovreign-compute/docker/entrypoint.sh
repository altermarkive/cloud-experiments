#!/bin/sh

set -e

USER=user

if [ -n "$USER_ID" ] && [ "$USER_ID" -ne 0 ]; then
  groupadd --gid $GROUP_ID $USER
  useradd --uid $USER_ID --gid $GROUP_ID $USER
  echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER
  chmod 0440 /etc/sudoers.d/$USER
  exec sudo --preserve-env --set-home -u $USER -- "$@"
else
  exec "$@"
fi
