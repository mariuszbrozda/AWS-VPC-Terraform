# Internet aws_internet_gateway

resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "${var.vpc_prefix}-${var.igw_name}"
  }
  depends_on = [aws_vpc.main_vpc]
}