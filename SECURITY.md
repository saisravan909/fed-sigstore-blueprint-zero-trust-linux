# Security Policy 

## Supported Versions
We actively maintain and provide security updates for the following versions of the blueprint:

| Version | Supported          |
| ------- | ------------------ |
| v0.1.x  | ✅ Yes             |
| < v0.1  | ❌ No              |

## Our Commitment
As an initiative born from the intersection of rigorous mathematics and cloud engineering, we take security vulnerabilities seriously. We are committed to a responsible disclosure process that protects the federal supply chain and aligns with **OpenSSF Best Practices**.

## Reporting a Vulnerability
**Please do not report security vulnerabilities through public GitHub issues.**

If you discover a potential security flaw in these policies or scripts, please report it via one of the following methods:

1. **Email:** saisravan@gmail.com
2. **Details:** Include a description of the vulnerability, the potential impact, and clear steps to reproduce (PoC).
3. **Timeline:** We will acknowledge receipt of your report within **48 hours** and provide a timeline for resolution.

## Response Process
Once a vulnerability is reported and verified, we will:
* Address the issue in a private fork.
* Coordinate a fix and a public disclosure.
* Update our documentation to prevent similar issues in the future.

## Preferred Security Standards
This project aligns with and encourages the use of:
* **NIST SP 800-204D** (Strategies for Integrated Software Supply Chain Security)
* **OpenSSF Scorecard** best practices for repository maintenance.

---

## Security Best Practices for Users
While this blueprint provides the tools for Zero Trust, security is a shared responsibility. Users should:
* Keep `cosign` and `kyverno` binaries updated to the latest stable versions.
* Regularly audit their Rekor transparency logs.
* Utilize Hardware Security Modules (HSMs) for root-of-trust operations.
