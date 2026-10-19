#!/usr/bin/env bash
set -euo pipefail
if [[ ! -f netlify.toml || ! -d content || ! -d layouts || ! -d repair-files ]]; then
  echo 'Run from your website repository root after copying fix-build.sh and repair-files there.'
  exit 1
fi
backup_dir="archive-original/build-fix-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$backup_dir"
if [[ -d config/_default/archive ]]; then
  mv config/_default/archive "$backup_dir/legacy-config"
fi
for folder in home slides admin; do
  if [[ -d "content/$folder" ]]; then
    mv "content/$folder" "$backup_dir/$folder"
  fi
done
if [[ -f content/authors/admin/_index.md ]]; then
  cp content/authors/admin/_index.md "$backup_dir/author-index.md"
fi
cp repair-files/content/authors/admin/_index.md content/authors/admin/_index.md
printf '\nCleanup complete. Originals preserved in %s\n' "$backup_dir"
printf 'Review git status, then commit and push. Nothing was committed or pushed automatically.\n'
