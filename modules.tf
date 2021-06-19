module "ec2" {
  source  = "./modules/ec2"
  instance_name  = "TESTE"
  key_name       = "terraform"
  aws_region     = "us-east-2"
  ami            = "ami-0d563aeddd4be7fff"
}
