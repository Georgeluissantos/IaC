resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags                 = var.vpc_tags
}

# Definindo o Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags   = var.aws_internet_gateway_tag
}

#Recurso subnet public
resource "aws_subnet" "subnet_public" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.cidr_block_public
  availability_zone       = var.az_public_us-west-2a
  tags = var.subnet_public_tag
}

#Recurso subnet private
resource "aws_subnet" "subnet_private" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.cidr_block_private
  availability_zone       = var.az_private_us-west-2a
  tags = var.subnet_private_tag
}

## Definindo o route table
resource "aws_route_table" "rt_public" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = var.cidr_block_rt
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = var.rt_public_tag
}
#Definindo um route tebale private
# Tabela de Rotas Privada - NAT Gateway
resource "aws_route_table" "rt_private" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block     = var.cidr_block_rt
    nat_gateway_id = aws_nat_gateway.nat_gateway.id
  }
  tags = var.rt_private_tag
}

#Associr um route table com subnet public
resource "aws_route_table_association" "rt_subnetpublic" {
  subnet_id      = aws_subnet.subnet_public.id
  route_table_id = aws_route_table.rt_public.id
}

#Associr um route table com subnet private
resource "aws_route_table_association" "rt_subnetprivate" {
  subnet_id      = aws_subnet.subnet_private.id
  route_table_id = aws_route_table.rt_private.id
}
#Criando um nat
# Criar um Elastic IP para o NAT Gateway
resource "aws_eip" "nat_eip" {
  vpc = true
}

# Criar o NAT Gateway na Subnet Pública
resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.subnet_public.id
  tags = var.nat_gateway_tags
  depends_on = [aws_internet_gateway.igw]
}