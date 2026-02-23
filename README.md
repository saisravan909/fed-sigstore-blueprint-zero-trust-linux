# Federal Sigstore Blueprint: Zero Trust for Linux

This repository provides a reference architecture and implementation framework for scaling **Sigstore (Cosign/Rekor)** within federal DevSecOps environments. 

## Key Features
* **Policy-as-Code:** Automated Kyverno policies for signature and SBOM enforcement.
* **Keyless Attestation:** Alignment with EO 14028 using OIDC identity.
* **Vulnerability Guardrails:** Enforcement of security thresholds before deployment.
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
## Structure
* `/policies`: Kyverno ClusterPolicies for admission control.
* `/pipeline`: Automation scripts for signing and attestation.
