#!/usr/bin/env bash

export PATH="$PATH:$HOME/bin"

bash -c "otelcol-sumo --config  /app/config/sumologic_collector.yaml 2>&1 &"
