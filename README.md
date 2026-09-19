# .github: Antigravity Fleet Central Configuration & Reusable Workflows

> **Special Repository**: This repository provides organization-wide default community health files, profile presentation, and reusable GitHub Actions workflows for the entire `Longgekutta` fleet.

## Features

1. **Profile Showcase**: [`profile/README.md`](profile/README.md) rendered on `https://github.com/Longgekutta`.
2. **Reusable CI Workflow**: [`.github/workflows/reusable-ci.yml`](.github/workflows/reusable-ci.yml) used by all fleet tools via:
   ```yaml
   jobs:
     ci:
       uses: Longgekutta/.github/.github/workflows/reusable-ci.yml@main
   ```
3. **Default Security Policy**: [`SECURITY.md`](SECURITY.md) inherited across all repositories.
4. **Default Issue & PR Templates**: Automated bug reports and pull request invariants.
