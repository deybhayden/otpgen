#!/bin/bash

# if clip exists, use it (Windows/WSL)
if [ -x "$(command -v clip.exe)" ]; then
  uv run python get_mfa_code.py $1 | clip.exe
# if pbcopy exists, use it (macOS)
elif [ -x "$(command -v pbcopy)" ]; then
  uv run python get_mfa_code.py $1 | pbcopy
# if wl-copy exists, use it (Wayland/Linux)
elif [ -x "$(command -v wl-copy)" ]; then
  uv run python get_mfa_code.py $1 | wl-copy
# if xclip exists, use it (X11/Linux)
elif [ -x "$(command -v xclip)" ]; then
  uv run python get_mfa_code.py $1 | xclip -selection clipboard
# if xsel exists, use it (X11/Linux)
elif [ -x "$(command -v xsel)" ]; then
  uv run python get_mfa_code.py $1 | xsel --clipboard
else
  echo "No clipboard tool found. Please install one of: wl-copy, xclip, xsel"
  exit 1
fi
