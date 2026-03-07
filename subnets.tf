resource "aws_subnet" "public_sn" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = var.public_cidr_block
  availability_zone       = var.availability_zone_1a
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_prefix}-${var.public_sn_name}"
  }
}

resource "aws_subnet" "private_sn" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = var.private_cidr_block
  availability_zone       = var.availability_zone_1b
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_prefix}-${var.private_sn_name}"
  }
}