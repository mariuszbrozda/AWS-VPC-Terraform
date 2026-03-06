# Provider variables
variable "profile" {
  type = string
}
variable "region" {
  type = string
}

variable "vpc-prefix" {
  description = "VPC prefix"
  type        = string
}

variable "vpc-name" {
  description = "VPC name"
  type        = string
}

variable "vpc-cidr-block" {
  description = "VPC CIDR block"
  type        = string
}