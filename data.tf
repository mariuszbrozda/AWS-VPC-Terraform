# Data sources
data "aws_vpc" "selected_vpc" {
  cidr_block = "192.168.0.0/16"
}

data "aws_subnets" "public_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected_vpc.id]
  }

  filter {
    name   = "tag:Name"
    values = ["*public*"]
  }

}
