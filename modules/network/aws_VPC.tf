resource "aws_vpc" "vpc_prd" {
    cidr_block = var.cidr_block 
    enable_dns_hostnames = true
    tags = var.vpc_tags
  
}

