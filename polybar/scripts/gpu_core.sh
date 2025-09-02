#!/bin/bash
nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk -F, '{printf "%i%%", $1}'
