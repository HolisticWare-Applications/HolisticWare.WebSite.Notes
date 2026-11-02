# DevOps

readme.md

DevOps 

    is a culture and 

    set of practices to shorten the development lifecycle and deliver high-quality software faster

    combines 

        software Development  

        IT Operations  . CI/CD is the 

core practices within DevOps

    *   CI Continuous Integration

    *   CD Continuous Delivery / Continuous Deployment

    automated engine that makes DevOps possible.


*   GitHub

    *   https://github.com/

*   GitLab

    *   https://gitlab.com/

    *   https://about.gitlab.com/

*   Codeberg

    *   https://codeberg.org/

*   OneDev

    *   https://onedev.io/

    *   https://github.com/theonedev/onedev

*   Radicle

    *   https://radicle.xyz/

*   Forgejo

    *   https://forgejo.org/


CI/CD stands for Continuous Integration and Continuous Delivery / Continuous Deployment, and it is a core practice within DevOps. [1] (https://octopus.com/devops/ci-cd/), [2] (https://www.youtube.com/watch?v=AknbizcLq4w&t=1196)
DevOps itself is a culture and set of practices that combines software Development and IT Operations to shorten the development lifecycle and deliver high-quality software faster. CI/CD is the automated engine that makes DevOps possible. [1] (https://www.youtube.com/watch?v=AknbizcLq4w&t=1196)

What is CI (Continuous Integration)?

• Definition: Developers frequently merge their code changes into a central shared repository (like GitHub or GitLab), ideally multiple times a day. [1] (https://www.ibm.com/think/topics/ci-cd-pipeline), [2] (https://www.splunk.com/en_us/blog/learn/ci-cd-devops-pipeline.html), [3] (https://www.youtube.com/watch?v=ddDJxFnv-qs&t=226)
• What it does: Every merge automatically triggers a build and runs automated tests (unit tests, code quality checks, and security scans). [1] (https://bitrise.io/guides/cicd), [2] (https://www.youtube.com/shorts/qx05mrsJlqY), [3] (https://octopus.com/devops/ci-cd/)
• Goal: Catch bugs, conflicts, and broken code early while the changes are small and easy to fix. [1] (https://www.youtube.com/watch?v=AknbizcLq4w&t=1196), [2] (https://bitrise.io/guides/cicd)

What is CD (Continuous Delivery vs. Continuous Deployment)?

• Continuous Delivery:
	• Automatically builds, tests, and prepares code changes for release.
	• Code is always in a deployable state, meaning a human just needs to click a button or give final approval to push it to production. [1] (https://octopus.com/devops/ci-cd/), [2] (https://bitrise.io/guides/cicd), [3] (https://www.ibm.com/think/topics/ci-cd-pipeline)
• Continuous Deployment:
	• Takes it a step further: every change that passes all automated tests is automatically deployed straight to production without any manual human intervention. [1] (https://octopus.com/devops/ci-cd/), [2] (https://bitrise.io/guides/cicd), [3] (https://www.ibm.com/think/topics/ci-cd-pipeline)

How CI/CD Fits into DevOps

• Removes Silos: DevOps bridges the gap between the people who write the code (developers) and the people who run and maintain the systems (IT/operations). [1] (https://www.splunk.com/en_us/blog/learn/ci-cd-devops-pipeline.html)
• Automation: Instead of manual server setups, slow handoffs, and error-prone deployments, a CI/CD pipeline automates the entire journey from git push to live production. [1] (https://www.youtube.com/watch?v=AknbizcLq4w&t=1196), [2] (https://bitrise.io/guides/cicd), [3] (https://www.splunk.com/en_us/blog/learn/ci-cd-devops-pipeline.html)
• Safety Nets: Practices like automated testing, containerization (such as Docker), infrastructure-as-code, and release strategies (like canary or blue/green deployments) ensure updates happen smoothly with minimal downtime. [1] (https://octopus.com/devops/ci-cd/), [2] (https://www.youtube.com/watch?v=AknbizcLq4w&t=1196), [3] (https://www.splunk.com/en_us/blog/learn/ci-cd-devops-pipeline.html)
You can explore further pipeline patterns and tools via guides like the DevOps Institute CI/CD Practices or Red Hat CI/CD Security Overview. [1] (https://www.redhat.com/en/topics/devops/what-is-ci-cd), [2] (https://www.devopsinstitute.com/what-is-ci-cd-6-patterns-and-practices/)
If you'd like, let me know:
• What programming language or tech stack you are working with
• Which cloud or server you want to deploy to
I can help you outline a basic CI/CD pipeline or recommend specific tools for your project.



A .NET CI/CD pipeline automates how your C# and .NET code moves from a local developer's machine to a live environment (like Azure, AWS, or an on-premise server) using the native .NET CLI. [1] (https://community.dataminer.services/enhance-your-ci-cd-pipeline-with-dataminer-net-tools/)

Standard Stages of a .NET CI/CD Pipeline

Every standard .NET pipeline follows a logical sequence defined in a YAML file (such as .github/workflows/*.yml or azure-pipelines.yml): [1] (https://milanjovanovic.tech/blog/how-to-build-ci-cd-pipeline-with-github-actions-and-dotnet), [2] (https://nareshit.com/blogs/cloud-ready-dotnet-azure-devops-ci-cd-pipelines)
1. Checkout & Setup (dotnet --version)
	• Pulls the latest code from Git and installs the required .NET SDK version (e.g., .NET 8 or .NET 10) on a build runner (Linux, Windows, or macOS). [1] (https://dev.to/martin_oehlert/deploying-to-azure-cicd-with-github-actions-141m), [2] (https://milanjovanovic.tech/blog/how-to-build-ci-cd-pipeline-with-github-actions-and-dotnet), [3] (https://www.c-sharpcorner.com/article/how-to-configure-cicd-pipeline-for-net-project-using-github-actions/)
2. Restore Dependencies (dotnet restore)
	• Downloads all NuGet packages and project references required by your solution. [1] (https://www.c-sharpcorner.com/article/how-to-configure-cicd-pipeline-for-net-project-using-github-actions/), [2] (https://milanjovanovic.tech/blog/how-to-build-ci-cd-pipeline-with-github-actions-and-dotnet)
3. Build (dotnet build --configuration Release --no-restore)
	• Compiles your solution or C# projects into binaries, catching syntax or type errors immediately. [1] (https://milanjovanovic.tech/blog/how-to-build-ci-cd-pipeline-with-github-actions-and-dotnet), [2] (https://www.c-sharpcorner.com/article/how-to-configure-cicd-pipeline-for-net-project-using-github-actions/)
4. Test (dotnet test --no-build --configuration Release)
	• Runs all automated unit and integration tests (xUnit, NUnit, or MSTest). If any test fails, the pipeline stops. [1] (https://milanjovanovic.tech/blog/how-to-build-ci-cd-pipeline-with-github-actions-and-dotnet), [2] (https://www.c-sharpcorner.com/article/how-to-configure-cicd-pipeline-for-net-project-using-github-actions/)
5. Publish / Package (dotnet publish -c Release -o ./publish)
	• Bundles the compiled DLLs, static files, and runtime configs into a deployable artifact folder (or builds a Docker image and pushes it to a container registry like Azure Container Registry). [1] (https://www.youtube.com/watch?v=F0crEKxrY8U), [2] (https://www.c-sharpcorner.com/article/how-to-configure-cicd-pipeline-for-net-project-using-github-actions/), [3] (https://milanjovanovic.tech/blog/how-to-build-ci-cd-pipeline-with-github-actions-and-dotnet), [4] (https://nareshit.com/blogs/cloud-ready-dotnet-azure-devops-ci-cd-pipelines)
6. Deploy (CD Stage)
	• Pushes the published output to your target destination—such as an Azure App Service, Azure Functions, Kubernetes (AKS), or an IIS server. [1] (https://wojciechowski.app/en/articles/github-actions-vs-azure-devops), [2] (https://nareshit.com/blogs/cloud-ready-dotnet-azure-devops-ci-cd-pipelines), [3] (https://dev.to/martin_oehlert/deploying-to-azure-cicd-with-github-actions-141m)

Example: Basic .NET CI/CD in GitHub Actions

Here is a standard YAML workflow that builds, tests, and publishes a .NET project on every push to main: [1] (https://milanjovanovic.tech/blog/how-to-build-ci-cd-pipeline-with-github-actions-and-dotnet), [2] (https://www.c-sharpcorner.com/article/how-to-configure-cicd-pipeline-for-net-project-using-github-actions/)
The full sample GitHub Actions YAML workflow for building, testing, and publishing your .NET project can be found in the referenced web document. [1] (https://milanjovanovic.tech/blog/how-to-build-ci-cd-pipeline-with-github-actions-and-dotnet), [2] (https://www.c-sharpcorner.com/article/how-to-configure-cicd-pipeline-for-net-project-using-github-actions/)

Popular CI/CD Tools for .NET

• GitHub Actions: Deeply integrated if your source code lives on GitHub; uses straightforward YAML files and official setup and deployment actions.
• Azure DevOps (Azure Pipelines): Microsoft’s enterprise CI/CD platform for Azure Repos, GitHub, and enterprise governance.
• GitLab CI/CD / Bitbucket Pipelines: Alternative platforms depending on where your code repository is hosted.
• C#-based Build Systems (Cake / Nuke): Allows writing build logic directly in C# for type safety and local debugging. [1] (https://github.com/lastlink/dotnet-ci-pipelines), [2] (https://milanjovanovic.tech/blog/how-to-build-ci-cd-pipeline-with-github-actions-and-dotnet), [3] (https://www.youtube.com/watch?v=7LkRipTlTzc&t=9), [4] (https://nareshit.com/blogs/cloud-ready-dotnet-azure-devops-ci-cd-pipelines), [5] (https://www.reddit.com/r/dotnet/comments/17527f5/what_is_the_most_popular_cicd_tool_for_dotnet/)
If you want to tailor this further, tell me:
• Where are you hosting your code? (GitHub, Azure DevOps, GitLab, etc.)
• Where are you deploying? (Azure App Service, Docker/K8s, AWS, IIS/Windows Server)
• Do you need help adding unit tests or database migrations to the pipeline?
