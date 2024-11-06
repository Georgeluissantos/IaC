output "vpc_prd_id" {
  value = aws_vpc.vpc_prd.cidr_block
}

output "subnet_private_id" {
    value = aws_subnet.subnet_private_us_east_1a.availability_zone
}