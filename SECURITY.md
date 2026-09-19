# Security Policy & Secret Isolation Invariants

## Supported Versions

All active repositories in the `Longgekutta` fleet adhere to the Antigravity Security Standard.

| Project Level | Supported | Secret Scanning Push Protection |
| :--- | :--- | :--- |
| Specs (Order 2) | :white_check_mark: Yes | Enabled |
| Tools (Order 1 & 3) | :white_check_mark: Yes | Enabled |
| Services & Bots (Order 0) | :white_check_mark: Yes | Enabled |

## Reporting a Vulnerability

If you discover a security vulnerability or accidental credential leak in any repository:
1. **DO NOT file a public issue.**
2. Send a private advisory through GitHub Security Advisories, or contact the maintainers directly.
3. Include the affected repository, commit hash, and remediation diff if available.

## Strict Invariants

1. **Airgap Policy**: Real money accounts and high-risk environments (`naked-candle-orderflow-strategy`, etc.) are physically isolated with `.airgap` markers.
2. **Zero Credentials in Git**: Real API keys (`sk-*`, `ghp_*`, private keys) are strictly forbidden in git history.
3. **Template-Only Configurations**: Only sanitized `.env.example` or `config.example.*` templates are committed.
