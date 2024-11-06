variable "ami_id" {
  type        = string
  description = "ID da AMI para a instância EC2"
}

variable "instance_type" {
  type        = string
  description = "Tipo da instância EC2"
  default     = "t2.micro"  # Valor padrão, se não for fornecido
}

variable "subnet_id" {
  type        = string
  description = "ID da subnet onde a instância será criada"
}
