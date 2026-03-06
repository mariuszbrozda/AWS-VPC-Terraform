output "vpc_cidr" {
  description = "VPC CIDR"
  value       = aws_vpc.main-vpc.cidr_block
}
