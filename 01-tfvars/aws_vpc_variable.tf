# variables.tf

# Região da AWS
variable "aws_region" {
  description = "Região da AWS"
  type        = string
}

# Range CIDR da VPC
variable "cidr_block" {
  description = "Range da VPC"
  type        = string
}

# Tags para a VPC
variable "vpc_tags" {
  description = "Tags para a VPC"
  type        = map(string)
}

# Tags para o Internet Gateway
variable "aws_internet_gateway_tag" {
  description = "Tags para o Internet Gateway"
  type        = map(string)
}

# Variable para o subnet public
variable cidr_block_public{
  type = string
  description = "CIDR Block para subnet public"
}

variable "az_public_us-west-2a" {
  type = string
  description = "Availability Zone para us-west-2a"
}
# Tag  para o subnet public
variable subnet_public_tag{
  type = map(string)
  description = "Tag para subnet public"
}

# Variable para o subnet private
variable cidr_block_private{
  type = string
  description = "CIDR Block para subnet private"
}

variable "az_private_us-west-2a" {
  type = string
  description = "Availability Zone para us-west-2a"
}
# Tag  para o subnet private
variable subnet_private_tag{
  type = map(string)
  description = "Tag para subnet public"
}

# Variable para o route public
variable cidr_block_rt{
type = string
description = "Variable para RT"
default = "0.0.0.0/0"
}

# Tag para o route public
variable rt_public_tag{
  type = map(string)
  description = "Tag para route table public"
}

# Tag para o route public
variable rt_private_tag{
  type = map(string)
  description = "Tag para route table private"
}

# Variable para NAT
variable "nat_gateway_tags" {
  type = map(string)
  description = "Variable para o AT-Gateway"
}