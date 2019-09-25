# Azure DevOps agents

azure-devops-agents.md

*   https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops


*   login at Azure DevOps

    *   https://devops.azure.com
    
    *   https://azure.microsoft.com/en-us/services/devops/?nav=min

*   got to Oraganization /+ Settings /+ Agent Pools

*   create Agent Pool 


```
mkdir agent-macosx && cd agent-macosx
curl \
    --output vsts-agent-osx-x64-2.155.1.tar.gz \
    https://vstsagentpackage.azureedge.net/agent/2.155.1/vsts-agent-osx-x64-2.155.1.tar.gz
    
tar zxvf ./vsts-agent-osx-x64-2.155.1.tar.gz
./config.sh
./run.sh
```

Create the agent

```
mkdir myagent && cd myagent
tar zxvf ~/Downloads/vsts-agent-osx-x64-2.155.1.tar.gz
```

Configure the agentDetailed instructions
Optionally run the agent interactively
If you didn't run as a service above:
