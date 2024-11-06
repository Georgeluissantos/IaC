variable "cidr_block_public_rt" {
  type = string
  description = " CIDR Block do RT 0.0.0.0/0"
  default = "0.0.0.0/0"
}
variable "RT_public_tags" {
  type = map(string)
  description = "TAG do RT public"
  default = {
    "Name" = "RT-public"
  }
}

variable "cidr_block_private_rt" {
  type = string
  description = " CIDR Block do RT Private 0.0.0.0/0"
  default = "0.0.0.0/0"
}
variable "RT_private_tags" {
  type = map(string)
  description = "TAG do RT public"
  default = {
    "Name" = "RT-private"
  }
}