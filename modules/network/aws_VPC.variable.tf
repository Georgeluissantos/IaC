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
