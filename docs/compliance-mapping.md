Federal Compliance Mapping (NIST 800-53)
This blueprint maps technical Policy-as-Code (PaC) enforcement to specific federal security controls.

Policy File,NIST 800-53 Control,Control Name,Functional Requirement
verify-sbom.yaml,SI-7(17),Software Firmware Integrity,Verify integrity of software using digital signatures/attestations.
verify-sbom.yaml,SR-3,Supply Chain Controls,Ensure SBOMs are provided and verified for all third-party components.
reject-vulns.yaml,RA-5,Vulnerability Monitoring,Automatically block the deployment of images with known critical vulnerabilities.
namespace-bind.yaml,AC-6,Least Privilege,Ensure OIDC identities are restricted to specific authorized namespaces.
sign-scripts.sh,SC-12,Cryptographic Key Estab.,"Transition from long-lived keys to short-lived, identity-based (keyless) signing."
