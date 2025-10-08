#!/usr/bin/env bash
set -euo pipefail

uv sync
python -m ipykernel install --user --name=mlfundamentals-env --display-name "ML-Fundamentals-env"

# Ensure a compatible Jupyter extension is installed for the current VS Code version
"$(dirname "${BASH_SOURCE[0]}")/install-jupyter-extension.sh"