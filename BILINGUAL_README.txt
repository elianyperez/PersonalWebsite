ENGLISH / ESPAÑOL WEBSITE

Install the update:
1. Extract this ZIP and copy apply-bilingual.sh and bilingual-files into your existing website repository root.
2. Open Git Bash there and run: bash apply-bilingual.sh
3. Review git status. Then run:
git add -A
git commit -m "Add English and Spanish versions"
git push

The installer backs up affected config, templates, Spanish content, English projects, author profile, CSS and scripts under archive-original. Old demo/widget folders are moved outside active content, and archived theme config is moved outside config. The .git directory is untouched. No remote actions happen automatically.

English stays at /. Spanish is at /es/. EN / ES switches to the equivalent page. Homepage, navigation, services, contact form, seven project summaries, and dark-mode controls have Spanish wording. Existing publication titles/abstracts, news content, PDFs and code remain in English and are labeled accordingly. Contact submissions include language; topic values remain stable across languages.

Check the Spanish text and role descriptions before sharing. The full site builds with Hugo Extended 0.91.2 and no Wowchemy modules. Generated local links, alternate-language URLs, asset links, form language fields and JavaScript syntax passed checks. Browser visual review, external links, and live form delivery remain unverified. After deployment test one Spanish form submission and check email notifications.

The complete directory ZIP is an alternative to this installer, not an additional required update. Preserve your existing .git directory if replacing the full directory. Replace config and layouts completely.
