# AWS Infrastructure

Terraform provisions a two-AZ VPC, public/private/database subnets, one NAT Gateway, EKS control plane and managed node group, ECR, IAM roles and optional single-AZ RDS PostgreSQL.

The EKS API public endpoint is restricted to `admin_cidr`; private endpoint access is enabled. Worker nodes run in private subnets. The single NAT Gateway is a development cost trade-off and a single point of egress failure.

Before applying, verify that the requested EKS Kubernetes version is currently supported in your region. Change `kubernetes_version` if necessary.
