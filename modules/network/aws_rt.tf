# Tabela de rotas public
resource "aws_route_table" "public_rt" {
 vpc_id = aws_vpc.vpc_prd.id

  route {
    cidr_block = var.cidr_block_public_rt
    gateway_id = aws_internet_gateway.igw.id
  }
  
  tags = var.RT_public_tags
}

# Tabela de rotas Private
resource "aws_route_table" "private_rt" {
 vpc_id = aws_vpc.vpc_prd.id
 route {
    cidr_block = var.cidr_block_private_rt
    nat_gateway_id = aws_nat_gateway.NAT.id
  }
  tags = var.RT_private_tags
}
