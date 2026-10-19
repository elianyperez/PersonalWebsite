# Eliany Perez website

A standalone Hugo website with shared styling for the homepage, projects, publications, news, tags, and error page. No theme modules or Go installation are needed. Original license notices remain in LICENSE.md.

## Install into your existing repository

1. Keep your existing PersonalWebsite folder and its .git directory.
2. Back up the existing config and layouts folders outside the repository, then remove those two old folders from PersonalWebsite. They must be replaced completely, not merged.
3. Copy everything inside PersonalWebsite_Revamped from this ZIP into PersonalWebsite, replacing existing files.
4. In Git Bash inside PersonalWebsite, run:

```bash
git status
git add -A
git diff --cached --stat
git commit -m "Redesign full portfolio website and add contact form"
git push
```

Review the staged file list before committing. The deletions in config/layouts replace the former theme setup. No Git metadata is included in the ZIP.

## Contact form activation

Enable form detection in your existing Netlify site and deploy this version. Under Forms > Submission notifications, add your receiving email address. The intended recipient is elianyp17@outlook.com. Submit a real test message and verify it appears in Forms and arrives by email before considering the form ready.

The form accepts name, email, topic (research/collaboration, freelance/contract, or general contact), and message. It includes a honeypot and clear success/error feedback. Live delivery is not verified.

## Content

Edit content/project, content/publication, and content/post for individual pages. Homepage copy is in layouts/index.html; shared styles are in static/css/site.css. Shared header/footer live in layouts/partials. Existing photos, PDFs, project links, and research content are preserved. Original demo/widget content is retained outside the build in archive-original. Old unused assets and reference files are retained.

## Validation

Full build passed with Hugo Extended 0.91.2. Local link checks passed across 43 HTML pages; inline JavaScript syntax checks passed. Browser visual QA, external link availability, and live form delivery were not verified. No GitHub or live-site changes were made.
