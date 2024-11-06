
#subnet Private az us_east_1a
resource "aws_subnet" "subnet_private_us_east_1a" { 
    vpc_id            = aws_vpc.vpc_prd.id             
    cidr_block        = var.cidr_block_private_us_east_1a
    availability_zone = var.az_private_us_east_1a
    tags              = var.subnet_private_tags_us_east_1a
}


#subnet Public az us_east_1a
resource "aws_subnet" "subnet_public_us_east_1a" { 
    vpc_id            = aws_vpc.vpc_prd.id             
    cidr_block        = var.cidr_block_public_us_east_1a
    availability_zone = var.az_public_us_east_1a
    tags              = var.subnet_public_us_east_1a_tags
}