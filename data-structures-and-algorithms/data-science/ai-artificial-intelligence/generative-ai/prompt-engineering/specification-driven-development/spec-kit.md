# SpecKit

*   https://github.com/github/spec-kit

```shell
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git@vX.Y.Z
```



```shell
# Check whether a newer release is available (read-only — does not modify anything)
specify self check

# Preview what would run, without actually upgrading
specify self upgrade --dry-run

# Upgrade in place to the latest stable release (auto-detects uv tool vs pipx install)
specify self upgrade
```