#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
src="$script_dir/nvim"
dest="$HOME/.config/nvim"
timestamp="$(date +%Y%m%d%H%M%S)"

if [ ! -d "$src" ]; then
	echo "Source directory not found: $src"
	exit 1
fi

if [ -e "$dest" ]; then
	if diff -r "$src" "$dest" >/dev/null 2>&1; then
		echo "Destination already identical to source; nothing to do."
		exit 0
	else
		backup="${dest}.backup.${timestamp}"
		echo "Backing up existing $dest to $backup"
		mv "$dest" "$backup"
	fi
fi

mkdir -p "$(dirname "$dest")"
echo "Copying $src to $dest"
if command -v rsync >/dev/null 2>&1; then
	rsync -a --delete "$src"/ "$dest"/
else
	cp -a "$src" "$dest"
fi

echo "Setting permissions: dirs 755, files 644"
find "$dest" -type d -exec chmod 755 {} \;
find "$dest" -type f -exec chmod 644 {} \;

echo "Installation complete: $dest"
