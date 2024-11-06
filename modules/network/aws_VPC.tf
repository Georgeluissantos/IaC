resource "aws_vpc" "vpc_prd" {
    cidr_block = var.cidr_block 
    enable_dns_hostnames = true
    tags = var.vpc_tags
  
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc_prd.id
    tags = var.aws_internet_gateway_tag
  
}