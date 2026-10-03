variable "vpc_cidr" {
  type        = string
  description = "Base CIDR for VPC network"
  default     = "10.100.0.0/16"
}

variable "environment" {
  type        = string
  description = "Target deployment environment"
  default     = "dev"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of public subnet CIDR ranges"
  default     = ["10.100.1.0/24", "10.100.2.0/24"]
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for multi-az deployment"
  default     = ["us-east-1a", "us-east-1b"]
}
