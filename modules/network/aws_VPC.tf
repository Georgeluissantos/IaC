resource "aws_vpc" "vpc_prd" {
    cidr_block = var.cidr_block 
    enable_dns_hostnames = true #Necessário para instâncias públicas acessíveis via DNS/ Habilita a resolução de DNS interno para os recursos dentro da VPC. Ou seja, permite que instâncias dentro da VPC possam resolver nomes de domínio DNS internos.
    enable_dns_support   = true  # Garante a resolução de DNS/
    tags = var.vpc_tags
  
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc_prd.id
    tags = var.aws_internet_gateway_tag
  
}