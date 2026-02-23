# Contributing to Federal Sigstore Blueprint

First off, thank you for considering contributing to the Federal Sigstore Blueprint! It’s people like you who help make this a robust resource for the federal DevSecOps community.

## Our Philosophy
This project aims to bridge the gap between high-level federal mandates (like EO 14028) and practical Linux implementation. We value:
* **Security-First:** All contributions must prioritize the integrity of the software supply chain.
* **Clarity:** Documentation is as important as code.
* **Vendor-Neutrality:** We focus on open-source standards like Sigstore and Kyverno.

## How Can I Contribute?

### 1. Reporting Bugs
* Check the [Issues Tab](https://github.com/saisravan909/fed-sigstore-blueprint-zero-trust-linux/issues) to see if the bug has already been reported.
* If not, open a new issue. Clearly describe the problem, your environment, and steps to reproduce the issue.

### 2. Suggesting New Policies
We are always looking for new Kyverno or OPA policies that align with NIST SSDF or CMMC requirements. 
* Please provide the `.yaml` file.
* Include a brief explanation of which federal mandate the policy helps satisfy.

### 3. Improving Documentation
Found a typo? Have a better way to explain keyless attestation? We welcome all documentation pull requests (PRs).

## Pull Request Process
1. **Fork the repo** and create your branch from `main`.
2. **Lint your YAML:** Ensure your policy files are valid Kubernetes manifests.
3. **Submit the PR:** Provide a clear description of the changes and link to any relevant issues.
4. **Review:** A maintainer will review your PR. We may ask for changes before merging.

## Developer Certificate of Origin (DCO)
By contributing to this project, you agree to the [Developer Certificate of Origin (DCO)](https://developercertificate.org/). This confirms that you have the right to submit the code under the project's open-source license.

---
*Questions? Feel free to reach out by opening a GitHub Issue!*
