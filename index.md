---
layout: default
title: Home
nav_order: 1
---

<p align="center">
  <img src="logo1.png" width="300" alt="Federal Sigstore Blueprint Logo">
</p>

# Federal Sigstore Blueprint: Zero Trust for Linux
<p align="center">
  <img src="https://img.shields.io/badge/License-Apache%202.0-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Focus-Federal%20Zero%20Trust-red" alt="Focus">
  <img src="https://img.shields.io/badge/Security-Sigstore-green" alt="Security">
</p>
This repository provides a reference architecture and implementation framework for scaling **Sigstore (Cosign/Rekor)** within federal DevSecOps environments. 

## Introduction
### Institutionalizing Zero Trust and Software Supply Chain Security for Federal Linux Clusters

The Federal Sigstore Blueprint is an open-source reference architecture and implementation framework designed to scale Sigstore (Cosign/Rekor) within federal DevSecOps environments. It automates the "Verify-Before-Deploy" lifecycle, transforming security requirements into automated, auditable guardrails.

### The Challenge
Federal agencies face a critical hurdle: implementing "Zero Trust" without paralyzing the development lifecycle. Traditional manual GPG key management and decentralized signing processes create significant points of failure, leading to "compliance debt" and increased vulnerability to supply chain attacks.

### Our Solution
This repository provides the tools to automate policy enforcement and align with EO 14028 and OMB M-22-18. By leveraging OIDC identity, we eliminate long-lived private keys and provide a "GAO-ready" immutable audit trail.
## Key Features
* **Policy-as-Code:** Automated Kyverno policies for signature and SBOM enforcement.
* **Keyless Attestation:** Alignment with EO 14028 using OIDC identity.
* **Vulnerability Guardrails:** Enforcement of security thresholds before deployment.
```mermaid
graph TD
    A[Developer CI Pipeline] -->|Sign and Attest| B[Sigstore/Cosign]
    B -->|Log Entry| C[Rekor Transparency Ledger]
    A -->|Push Image| D[Container Registry]

    subgraph "Federal Linux Cluster"
    E[Kubernetes API] -->|Admission Request| F[Kyverno Policy Engine]
    F -->|Verify Signature| B
    F -->|Check Transparency| C
    F -->|Enforce Policy| G[Running Pod]
    end

    style G fill:#9f9,stroke:#333,stroke-width:2px
    style F fill:#f96,stroke:#333,stroke-width:2px
```
## Structure
* `/policies`: Kyverno ClusterPolicies for admission control.
* `/pipeline`: Automation scripts for signing and attestation.
* docs/compliance-mapping.md: Mapping of policies to NIST 800-53 security controls.
##  Quick Start
To test the blueprint locally:
1. **Install Cosign:** `brew install cosign` (or your Linux package manager).
2. **Run the Script:** `./pipeline/sign-and-attest.sh`
3. **Verify Compliance:** Check `docs/compliance-mapping.md` for specific NIST control alignment.

##  Roadmap
[x] Phase 1: Core Keyless Signing Scripts

[x] Phase 2: Kyverno Admission Policies

[ ] Phase 3: Hardware Security Module (HSM) Integration

[ ] Phase 4: Automated CISA KEV Vulnerability Guardrails

## Project Leadership
This initiative bridges the gap between rigorous mathematics and scalable cloud engineering.

## Sai Sravan Cherukuri — Visionary & Lead Architect

## Sai Saketh Cherukuri — Lead Architect

M.S. in Mathematics and Computer Science

Specializing in the algorithmic verification of security controls and formal compliance mapping.

## Contributing
We are seeking technical partners, DevSecOps engineers, and Security Architects to help build the enforcement engine. Please read our Contributing Guide to get started.

## License
This project is licensed under the Apache License 2.0.

[![Latest Release](https://img.shields.io/github/v/release/saisravan909/fed-sigstore-blueprint-zero-trust-linux?include_prereleases&color=blue&label=Latest%20Release)](https://github.com/saisravan909/fed-sigstore-blueprint-zero-trust-linux/releases/latest)

## Project Health Dashboard

| Security & Compliance | Development Status | Community |
| :--- | :--- | :--- |
| [![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/saisravan909/fed-sigstore-blueprint-zero-trust-linux/badge)](https://securityscorecards.dev/viewer/?uri=github.com/saisravan909/fed-sigstore-blueprint-zero-trust-linux) | [![Latest Release](https://img.shields.io/github/v/release/saisravan909/fed-sigstore-blueprint-zero-trust-linux?include_prereleases&color=blue)](https://github.com/saisravan909/fed-sigstore-blueprint-zero-trust-linux/releases) | [![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE) |
| [![Security Policy](https://img.shields.io/badge/Security-Policy-brightgreen.svg)](SECURITY.md) | [![Build Status](https://github.com/saisravan909/fed-sigstore-blueprint-zero-trust-linux/actions/workflows/scorecard.yml/badge.svg)](https://github.com/saisravan909/fed-sigstore-blueprint-zero-trust-linux/actions) | [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md) |
