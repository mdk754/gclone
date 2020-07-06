#!/usr/bin/env bash
set -euo pipefail

INSTALL_PATH=/usr/local/bin

function main() {
	if ! command -v git > /dev/null; then
		echo "Please ensure git is installed and in your PATH!"
		exit 1
	fi

	if [[ -e "${INSTALL_PATH}/gclone" && "${1-}" != "--force" ]]; then
		echo "Found existing installation in ${INSTALL_PATH}! You may use --force to install anyway."
		exit 1
	fi

	echo "Installing to ${INSTALL_PATH}..."
	cp gclone "${INSTALL_PATH}/"
	echo "Done!"
}

main $*
