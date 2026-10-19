Copy fix-build.sh and repair-files into your website root. In Git Bash there: bash fix-build.sh
Review git status, then run git add -A, git commit -m "Remove legacy theme configuration", and git push.
The script preserves legacy configuration and demo/widget content under archive-original outside active Hugo directories. It replaces theme-specific author shortcodes with normal Markdown. Existing homepage, dark mode, form and project case studies are unchanged.
Cause: config/_default/archive/config.yaml still imports Wowchemy. Your current main config and go.mod are already clean.
