resource "aws_route_table_association" "rt_subnet1" {
  subnet_id      = aws_subnet.user30-subnet1.id
  route_table_id = aws_route_table.user30-rt.id
}

resource "aws_route_table_association" "rt_subnet2" {
  subnet_id      = aws_subnet.user30-subnet2.id
  route_table_id = aws_route_table.user30-rt.id
}