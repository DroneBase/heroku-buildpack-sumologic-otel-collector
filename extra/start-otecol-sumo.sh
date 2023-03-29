#!/usr/bin/env bash

export PATH="$PATH:$HOME/bin"

CONFIG=/app/config/sumologic_collector.yaml

if [[ -f "$CONFIG" ]]; then
  bash -c "otelcol-sumo --config  $CONFIG 2>&1 &"
else
  echo "-----> Config ${CONFIG} not found, skipping otelcol-sumo"
fi
