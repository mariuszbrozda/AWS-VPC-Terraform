# Provider variables
variable "profile" {
  type = string
}
variable "region" {
  type = string
}

variable "vpc_prefix" {
  description = "VPC prefix"
  type        = string
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type        = string
}

variable "igw_name" {
  description = "IGW name"
  type        = string
}

# Subnet variables
variable "azs" {
  type = list(string)
}
variable "cidr_blocks" {
  type = list(string)
}
variable "public_ips" {
  type = list(bool)
}
variable "subnet_names" {
  type = list(string)
}