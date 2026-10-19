#!/usr/bin/env bash
set -euo pipefail
if [[ ! -f netlify.toml || ! -d content || ! -d bilingual-files ]]; then
 echo 'Run from your website root after copying apply-bilingual.sh and bilingual-files there.'
 exit 1
fi
backup_dir="archive-original/bilingual-backup-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$backup_dir"
for name in config layouts content-es; do
 if [[ -d "$name" ]]; then mv "$name" "$backup_dir/$name"; fi
done
for name in home slides admin; do
 if [[ -d "content/$name" ]]; then mkdir -p "$backup_dir/content"; mv "content/$name" "$backup_dir/content/$name"; fi
done
for name in content/project content/authors/admin static/css static/js; do
 if [[ -d "$name" ]]; then mkdir -p "$backup_dir/$(dirname "$name")"; cp -a "$name" "$backup_dir/$name"; fi
done
if [[ -f go.mod ]]; then cp go.mod "$backup_dir/go.mod"; fi
cp -a bilingual-files/. ./
printf '\nBilingual update installed. Backups: %s\n' "$backup_dir"
printf 'Review git status, then commit and push. This script does not commit or push.\n'
