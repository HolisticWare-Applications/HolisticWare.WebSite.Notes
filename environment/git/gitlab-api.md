# GitLab API

gitlab-api.md

## Sample Creating HolisticWare private repos for bindings

*   https://docs.gitlab.com/ee/api/README.html

```
export GITLAB_API_KEY=

export GROUP=holisticware-bindings
export PROJECT=Triton

curl \
    -H "Content-Type:application/json" \
    https://gitlab.com/api/v4/projects?private_token=$GITLAB_API_KEY \
    -d \
    "
    { 
        \"name\": \"$PROJECT\",
        \"description\": \"$PROJECT\",
        \"permissions\": 
            {
                \"project_access\": 
                {
                    \"access_level\": 10,
                    \"notification_level\": 3
            },
    }
    "
curl \
    -H "Content-Type:application/json" \
    https://gitlab.com/api/v4/projects?private_token=$GITLAB_API_KEY \
    -d \
    "
    { 
        \"name\": \"Xtras-Binaries-Xtensive-$PROJECT\",
        \"description\": \"Xtras-Binaries-Xtensive-$PROJECT\"
    }
    "
curl \
    -H "Content-Type:application/json" \
    https://gitlab.com/api/v4/projects?private_token=$GITLAB_API_KEY \
    -d \
    "
    { 
        \"name\": \"Xtras-Binaries-Minimal-$PROJECT\",
        \"description\": \"Xtras-Binaries-Minimal-$PROJECT\"
    }
    "
```

```
curl \
    --header "PRIVATE-TOKEN: $GITLAB_API_KEY" \
    https://gitlab.example.com/api/v4/namespaces
```

