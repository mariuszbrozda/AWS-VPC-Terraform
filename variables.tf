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

variable "public_cidr_block" {
  description = "VPC Subnet CIDR block"
  type        = string
}

variable "private_cidr_block" {
  description = "VPC Subnet CIDR block"
  type        = string
}

variable "igw_name" {
  description = "IGW name"
  type        = string
}

variable "public_sn_name" {
  description = "IGW name"
  type        = string
}

variable "private_sn_name" {
  description = "IGW name"
  type        = string
}

variable "availability_zone_1a" {
  description = "AZ name"
  type        = string
}

variable "availability_zone_1b" {
  description = "AZ name"
  type        = string
}