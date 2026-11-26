variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "project_name" {
  type    = string
  default = "netflix-devsecops"
}

variable "vpc_cidr" {
  type    = string
  default = "10.20.0.0/16"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.20.1.0/24", "10.20.2.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.20.11.0/24", "10.20.12.0/24"]
}

variable "database_subnet_cidrs" {
  type    = list(string)
  default = ["10.20.21.0/24", "10.20.22.0/24"]
}

variable "cluster_name" {
  type    = string
  default = "netflix-dev-eks"
}

variable "kubernetes_version" {
  type    = string
  default = "1.36"
}

variable "node_instance_type" {
  type    = string
  default = "t3.medium"
}

variable "node_desired_size" {
  type    = number
  default = 2
}

variable "node_min_size" {
  type    = number
  default = 1
}

variable "node_max_size" {
  type    = number
  default = 3
}

variable "admin_cidr" {
  type        = string
  description = "Your public IP in CIDR notation for EKS public API access, e.g. 203.0.113.10/32"
}

variable "create_rds" {
  type    = bool
  default = false
}

variable "db_instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "db_name" {
  type    = string
  default = "netflixapp"
}

variable "create_jenkins" {
  type    = bool
  default = true
}

variable "jenkins_instance_type" {
  type    = string
  default = "t3.medium"
}
