#!/bin/bash

# if clip exists, use it
if [ -x "$(command -v clip.exe)" ]; then
  uv run python get_mfa_code.py $1 | clip.exe
# if pbcopy exists, use it
elif [ -x "$(command -v pbcopy)" ]; then
  uv run python get_mfa_code.py $1 | pbcopy
fi
