# dev.tfvars
aws_region = "us-east-1"
cidr_block = "172.16.0.0/16"

vpc_tags = {
  Name = "VPC-DEV"
}

aws_internet_gateway_tag = {
  Name = "Internet-Gateway"
}
