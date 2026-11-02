Accessibility

https://github.com/swipewalk/swipewalk

https://www.reddit.com/r/dotnetMAUI/comments/1x7x9cc/a_few_maui_accessibility_gotchas_i_found_by/


Our standard workflow goes something like this:

Clone repo from gitlab with main branch

Make new branch

Make all the changes. Push the code to the new branch to GitLab

Open a merge request on GitLab

CI pipelines automatically run to validate the changes

Team member reviews MR and approves

Merge MR to main

CI/CD pipelines automatically run to build and deploy changes to staging environment

QA signs off on staging environment changes, approves deployment to prod environment

Deployment run manually for prod environment
