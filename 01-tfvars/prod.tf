# Prod.tfvars
aws_region = "us-west-2"
cidr_block = "10.0.0.0/16"

vpc_tags = {
  Name = "VPC-Prod"
}

aws_internet_gateway_tag = {
  Name = "Internet-Gateway"
}

#tfvar para subnet public
cidr_block_public = "10.0.0.0/17" 
az_public_us-west-2a = "us-west-2a"
subnet_public_tag ={
  Name ="Subnet-public-us-west-2"
}

#tfvar para subnet private
cidr_block_private =  "10.0.128.0/17" 
az_private_us-west-2a = "us-west-2a"
subnet_private_tag ={
  Name ="Subnet-private-us-west-2"
}

#tfvar para route table public
rt_public_tag = {
  Name = "RT-public"
}

#tfvar para route table public
rt_private_tag = {
  "Name" = "RT-private"
}

#tfvar para NAT-Gateway
nat_gateway_tags = {
  "Name" = "NAT-Gateway"
}