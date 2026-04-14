# Velero GitOps + Terraform (Full DR Stack)

## Architecture
GitHub → ArgoCD → Kubernetes (Velero) → AWS S3 + EBS → DR Restore

## Components
- ArgoCD (GitOps engine)
- Velero (Backup & Restore)
- AWS S3 (Backup storage)
- EBS Snapshots
- Terraform (IAM + S3)

## Terraform
- S3 bucket for backups
- IAM role for Velero IRSA
- Policy for EC2 + S3 access

## Flow
1. Terraform creates AWS infra
2. ArgoCD deploys Velero
3. Schedules run backups
4. DR restore when needed
