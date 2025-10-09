#!/usr/bin/env bash
set -euo pipefail

TARGET_VERSION="${1:-2025.9.2025092201}"
ENGINE_MIN="${2:-1.104.0}"

if ! command -v code >/dev/null 2>&1; then
  echo "VS Code CLI (code) is not available; skipping Jupyter extension install" >&2
  exit 0
fi

if code --list-extensions --show-versions | grep -q "ms-toolsai.jupyter@${TARGET_VERSION}"; then
  echo "Jupyter extension ${TARGET_VERSION} already installed"
  exit 0
fi

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

VSIX_GZ="${TMP_DIR}/jupyter.vsix.gz"
VSIX="${TMP_DIR}/jupyter.vsix"
PATCHED="${TMP_DIR}/jupyter_patched.vsix"

DOWNLOAD_URL="https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-toolsai/vsextensions/jupyter/${TARGET_VERSION}/vspackage"

echo "Downloading Jupyter extension ${TARGET_VERSION} from ${DOWNLOAD_URL}" >&2
curl -sSL "${DOWNLOAD_URL}" -o "${VSIX_GZ}"

echo "Decompressing VSIX package" >&2
gzip -dc "${VSIX_GZ}" > "${VSIX}"

TMP_DIR="${TMP_DIR}" ENGINE_MIN="${ENGINE_MIN}" VSIX="${VSIX}" PATCHED="${PATCHED}" python - <<'PY'
import json
import os
import pathlib
import shutil
import tempfile
import zipfile

vsix_path = pathlib.Path(os.environ["VSIX"])
patched_path = pathlib.Path(os.environ["PATCHED"])
engine_min = os.environ["ENGINE_MIN"]

work_dir = pathlib.Path(tempfile.mkdtemp())
try:
    with zipfile.ZipFile(vsix_path) as zf:
        zf.extractall(work_dir)

    package_json = work_dir / "extension" / "package.json"
    data = json.loads(package_json.read_text())
    data["engines"]["vscode"] = f">={engine_min}"
    package_json.write_text(json.dumps(data, indent=2))

    with zipfile.ZipFile(patched_path, "w", zipfile.ZIP_DEFLATED) as zf:
        for file_path in work_dir.rglob("*"):
            if file_path.is_file():
                zf.write(file_path, file_path.relative_to(work_dir))
finally:
    shutil.rmtree(work_dir)
PY

echo "Installing patched Jupyter extension" >&2
code --install-extension "${PATCHED}" --force > /dev/null

code --list-extensions --show-versions | grep -i jupyter
