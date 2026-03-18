# Public routetables for internet access
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_igw.id
  }

  tags = {
    Name = "${var.vpc_prefix}-${var.route_table_name}"
  }
  depends_on = [aws_vpc.main_vpc, aws_internet_gateway.main_igw]
}