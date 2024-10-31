
resource "aws_subnet" "subnet_private_us_east_1a" { 
    vpc_id            = aws_vpc.vpc_prd.id             
    cidr_block        = var.cidr_block   
    availability_zone = var.az_us_east_1a
    tags              = var.subnet_private_tags
}

