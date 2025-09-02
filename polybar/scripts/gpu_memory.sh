#!/bin/bash

nvidia-smi --query-gpu=memory.used,memory.total --format=csv,noheader,nounits | awk -F, '{printf "%.1f%%\n", ($1/$2)*100}'
