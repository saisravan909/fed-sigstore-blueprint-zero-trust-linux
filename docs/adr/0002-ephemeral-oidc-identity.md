# ADR 0002: Transitioning from Static GPG Keys to Ephemeral OIDC Identity

## Status
Accepted

## Context
Federal agencies traditionally manage software integrity via long-lived GPG/RSA keys. However, NIST SP 800-204D highlights that static key management introduces significant lateral movement risks if keys are compromised or improperly rotated.

## Decision
We have decided to implement **Keyless Attestation** as the primary signing mechanism, utilizing OpenID Connect (OIDC) identities for short-lived certificate issuance via Fulcio.

## Rationale: Cryptographic Rigor & Security
* **Elimination of Secret Sprawl:** By using ephemeral keys that exist only for 10 minutes, we mathematically reduce the window of opportunity for a compromised key to be utilized.
* **Identity-First Trust:** We move the "Root of Trust" from a file on a disk to a verifiable identity (GitHub Actions, Google, etc.), which aligns with the Executive Order 14028's mandate for Zero Trust.
* **Immutable Transparency:** Every signature is bound to a Rekor entry, providing a tamper-proof mathematical proof of when and who signed the artifact, which is superior to traditional GPG signatures that lack an inherent "time-of-signing" ledger.

## Consequences
* **Pros:** Removes the burden of manual key rotation; provides GAO-ready audit logs.
* **Cons:** Requires an active internet connection to communicate with the Public Good Sigstore instance (or a private instance).
