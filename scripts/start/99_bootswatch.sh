#!/bin/bash

info 'Prepare workspace folder...'
WORKSPACE='/opt/bootswatch/workspace'
mkdir -p "$WORKSPACE"
if [[ $(ls "$WORKSPACE" 2>/dev/null | wc -l) -eq 0 ]]; then
  info 'Copy default styles...'
  cp /opt/bootswatch/custom/* "$WORKSPACE" 
fi
success 'workspace prepared'
