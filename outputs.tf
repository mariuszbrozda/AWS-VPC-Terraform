output "vpc_cidr" {
  description = "VPC CIDR"
  value       = aws_vpc.main_vpc.cidr_block
}

output "public_subnets" {
  value = data.aws_subnets.public_subnets.ids
}
