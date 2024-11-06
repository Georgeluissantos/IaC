# Variável para subnet Private
variable "cidr_block_private_us_east_1a" {                     
    type        = string
    description = "Range da subnet private na AZ us-east-1a"
    default     = "172.16.1.0/24"                      
}

variable "az_private_us_east_1a" {                              
    type        = string
    description = "Availability Zone para a subnet private"
    default     = "us-east-1a"
}

variable "subnet_private_tags_us_east_1a" {                        
    type        = map(string)
    description = "Tag para subnet private"
    default     = {
        Name = "subnet-private-us-east-1a"
    }
}

#subnet Public
variable "cidr_block_public_us_east_1a" {                     
    type        = string
    description = "Range da subnet private na AZ us-east-1a"
    default     = "172.16.2.0/24"                      
}

variable "az_public_us_east_1a" {                              
    type        = string
    description = "Availability Zone para a subnet private"
    default     = "us-east-1a"
}

variable "subnet_public_us_east_1a_tags" {                        
    type        = map(string)
    description = "Tag para subnet private"
    default     = {
        Name = "subnet-public-us-east-1a"
    }
}
