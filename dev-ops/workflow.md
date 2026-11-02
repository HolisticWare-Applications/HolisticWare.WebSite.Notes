CI Workflow

Typical/standard workflow:

1.  Clone repo from gitlab with main branch

2.  Make new branch

3.  Make all the changes. Push the code to the new branch to GitLab

4.  Open a Pull Request (PR AKA merge request) on remote (HitHub, GitLab...)

5.  CI pipelines automatically run to validate the changes

6.  PR review (MR review) by team member and approval

7.  Merge PR (MR) to main/master

8.  CI/CD pipelines automatically run to build and deploy changes to staging environment

9.  QA signs off on staging environment changes, approves deployment to prod environment

10. Deployment run manually for prod environment



https://www.reddit.com/r/AskProgramming/comments/1x10bcv/how_do_you_work_when_code_and_pipeline_execution/
