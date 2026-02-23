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

## Key Features
* **Policy-as-Code:** Automated Kyverno policies for signature and SBOM enforcement.
* **Keyless Attestation:** Alignment with EO 14028 using OIDC identity.
* **Vulnerability Guardrails:** Enforcement of security thresholds before deployment.
```mermaid
graph TD
    A[Developer/CI Pipeline] -->|1. Sign & Attest| B(Sigstore/Cosign)
    B -->|2. Log Entry| C{Rekor Transparency Ledger}
    A -->|3. Push Image| D[Container Registry]
    
    subgraph "Federal Linux Cluster"
    E[Kubernetes API] -->|4. Admission Request| F[Kyverno Policy Engine]
    F -->|5. Verify Signature| B
    F -->|6. Check Transparency| C
    F -->|7. Enforce Policy| G[Running Pod]
    end

    style G fill:#9f9,stroke:#333,stroke-width:2px
    style F fill:#f96,stroke:#333,stroke-width:2px
```
## Structure
* `/policies`: Kyverno ClusterPolicies for admission control.
* `/pipeline`: Automation scripts for signing and attestation.
* docs/compliance-mapping.md: Mapping of policies to NIST 800-53 security controls.
