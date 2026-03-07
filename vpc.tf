# VPC
resource "aws_vpc" "main_vpc" {
  cidr_block                       = var.vpc_cidr_block
  enable_dns_support               = true
  enable_dns_hostnames             = true
  assign_generated_ipv6_cidr_block = false

  tags = {
    Name = "${var.vpc_prefix}-${var.vpc_name}"
  }
}