# ADR 0001: Selection of Kyverno as Primary Policy Engine

## Status
Accepted

## Context
Federal Zero Trust requirements (NIST 800-204D) necessitate a "Verify-Before-Deploy" mechanism for containerized workloads. We evaluated Open Policy Agent (OPA/Gatekeeper) and Kyverno.

## Decision
We have selected **Kyverno** as the primary admission controller for the Federal Sigstore Blueprint.

## Rationale: Rigorous Engineering & Scalability
* **Native Kubernetes Logic:** Kyverno uses standard YAML manifests, reducing the "mathematical complexity" and cognitive load for federal sysadmins compared to Rego (OPA).
* **Sigstore First-Class Support:** Kyverno has native `verifyImages` rules that integrate directly with Cosign and Rekor without requiring external sidecars or complex OPA-to-Sigstore handshakes.
* **Auditability:** Kyverno’s policy reports map directly to Kubernetes resources, providing a cleaner audit trail for compliance verification.

## Consequences
* **Pros:** Faster implementation for federal agencies; no need to learn a new DSL (Rego).
* **Cons:** Less flexibility for non-Kubernetes workloads compared to OPA.
