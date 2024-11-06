/*
module "ec2" {
  source        = "./modules/ec2"
  ami_id        = "ami-0866a3c8686eaeeba"          # Substitua pelo ID da sua AMI
  instance_type = "t2.micro"                       # Tipo da instância
  subnet_id     = module.network.subnet_private_id # Referencia o ID da subnet privada
}
*/
module "network" {
  source = "./modules/network"

}