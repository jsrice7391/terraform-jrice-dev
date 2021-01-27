variable "aws_key_name" {
  description = "Name of key to use for instances"
  default     = "jrice-app-deploy-key"
}
variable "aws_region" {
  description = "EC2 Region for the VPC"
  default     = "us-east-1"
}

variable "amis" {
  description = "AMIs by region"
  default = {
    us-east-1 = "ami-0be2609ba883822ec" # Amazon Linux 2 AMI
  }
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
  default     = "10.0.1.0/24"
}

variable "public_subnet_two_cidr" {
  description = "CIDR for the Public Subnet"
  default     = "10.0.2.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
  default     = "10.0.3.0/24"
}
