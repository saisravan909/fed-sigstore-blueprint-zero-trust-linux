---
layout: default
title: Compliance Mapping
nav_order: 2
---

# Federal Compliance Mapping (NIST 800-53)

This blueprint is designed to meet the rigorous security requirements of **Executive Order 14028** and the **NIST 800-53 Revision 5** security control framework. By integrating Sigstore and Kyverno, federal agencies can automate the verification of their software supply chain.

## Security Control Mapping

| Control ID | Control Name | Blueprint Implementation |
| :--- | :--- | :--- |
| **SI-7(6)** | Software & Information Integrity | **Sigstore/Cosign:** Digitally signs container images to prevent unauthorized modifications. |
| **AU-10(1)** | Audit Trail Integrity | **Rekor:** Maintains a tamper-resistant transparency log of all signing events. |
| **AC-3** | Access Enforcement | **Kyverno:** Acts as a gatekeeper in Kubernetes, blocking unsigned images from running. |
| **IA-2** | Identity & Authentication | **Keyless Signing:** Uses OIDC identities (like GitHub Actions) instead of permanent, stealable keys. |
| **SR-3** | Supply Chain Controls | **Attestations:** Generates and verifies provenance (SLSA) to prove where and how software was built. |

## Relevant Policies
This blueprint utilizes the following Kyverno policies to enforce these controls:
* `check-image-signature`: Enforces SI-7(6) by verifying the Sigstore signature.
* `verify-provenance-attestation`: Enforces SR-3 by checking the SLSA attestation.
