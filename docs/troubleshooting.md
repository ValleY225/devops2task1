# Troubleshooting & Incident Recovery
## Incident #001: Insecure SSH Root Login
- **Issue:** Commit introduced `PermitRootLogin yes` in docs/configuration.md.
- **Resolution:** Applied `git revert` to safely undo the change while preserving full audit history.
