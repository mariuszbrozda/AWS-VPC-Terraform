resource "aws_route_table_association" "public_rt_association" {
  count          = length(data.aws_subnets.public_subnets.ids)
  subnet_id      = data.aws_subnets.public_subnets.ids[count.index]
  route_table_id = aws_route_table.public_route_table.id

  depends_on = [data.aws_subnets.public_subnets]
}