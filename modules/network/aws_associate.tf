resource "aws_route_table_association" "RT_subnet_public" {
  subnet_id = aws_subnet.subnet_public_us_east_1a.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "RT_subnet_private"  {
 subnet_id = aws_subnet.subnet_private_us_east_1a.id
 route_table_id = aws_route_table.private_rt.id
}