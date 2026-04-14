# Velero GitOps (ArgoCD)

This repo enables:
- GitOps-based Velero configuration
- Automated backup schedules
- AWS S3 + EBS snapshots
- DR restore job via Kubernetes

## Flow
GitHub -> ArgoCD -> Velero CRDs -> AWS S3 + EBS -> DR Restore
