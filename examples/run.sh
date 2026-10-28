#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_quant info
PYTHONPATH=src python -m gbt_quant check --payload '{}'
PYTHONPATH=src python -m gbt_quant run   --payload '{}'
