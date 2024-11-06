variable "cidr_block" {
    type        = string
    description = "Range da VPC de produção"
    default     = "172.16.0.0/16"
}

variable "vpc_tags" {  # Nome simplificado e mais genérico
    type        = map(string)
    description = "Tags para a VPC de produção"
    default     = {
        Name = "VPC-Prod"
    }  
}

#Variable para IGW 
variable "aws_internet_gateway_tag" {
  type = map(string)
  description = "IGW para VPC prod"
  default = {
    "Name" = "Internet Gateway"
  }
}