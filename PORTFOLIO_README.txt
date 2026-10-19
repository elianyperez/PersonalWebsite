PORTFOLIO UPDATE

This update creates seven on-site project pages, a visual portfolio directory, search and category filters, related-work links, and navigation to Portfolio. It retains external source links as supporting materials. It does not add an unbuilt dashboard or runnable experiment.

INSTALL UPDATE ZIP
Copy the layouts, static, and content folders from the update ZIP into your existing website root and replace matching files. Keep your .git directory. Existing project images remain in place. This update uses project-specific templates to override the old theme’s project pages.

In Git Bash inside your website repository:
git add layouts static/css/site.css content/project
git diff --cached --stat
git commit -m "Add portfolio browsing and on-site project case studies"
git push

FULL DIRECTORY OPTION
The complete ZIP is a full source copy, including the standalone theme-free configuration. For a full replacement, back up the current repository, keep its .git directory, remove its old config and layouts directories, and copy the contents of PersonalWebsite_Portfolio into your repository. Review git status before staging.

SOURCES AND CONTENT LIMITS
The project metadata, images, publication abstracts, and CV come from your existing GitHub site. The task case study uses your accessible Notion task-design walkthrough. The trust case studies use your Springer Nature Behind the Paper article. The API case study uses your existing publication abstract and Notion summary. Navigation research uses CV presentation records and existing project metadata because the Notion page could not be retrieved. Coding collection details remain concise for the same reason. Individual contributions are described only where documented; research team findings are attributed to the team. Confirm the role wording before sharing widely.

Sources:
https://github.com/elianyperez/PersonalWebsite
https://elianysportfolio.notion.site/Programming-a-Gambling-task-fde49c0bf032415bb947ed0c6c67a414
https://communities.springernature.com/posts/facing-wolves-in-sheep-s-clothing-how-younger-and-older-adults-differ-in-trust-related-decision-making-and-learning
https://elianysportfolio.notion.site/Understanding-API-Blindspots-in-Software-Development-ce2600b33d644ccf84296df1cb3968d3

VALIDATION
Full Hugo 0.91.2 build passed. All generated local links passed. Seven case studies and their section structure checked. JavaScript syntax checks passed. Browser visual QA and live form delivery remain unverified. No live site or remote repository changes made.

The footer no longer includes Always curious. Any Twitter feed added by Netlify snippet injection must be removed in Netlify, as previously discussed.
