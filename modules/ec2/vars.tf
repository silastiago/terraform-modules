variable "instance_name" {
  type        = string
  description = "Nome da instancia."
  default     = "instancia"
}

variable "ami" {
  type = string
  description = "Id da imagem EC2 que desejamos utilizar para nossa instância."
  default = "ami-0915bcb5fa77e4892"         
}

variable "instance_type" {
  type        = string
  description = "Tipo de instância a ser utilizado"
  default     = "t2.micro"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "key_name" {
  default = "jetbov-vpc-shared"
}

variable "instance_qtd" {
  default = 1
}


variable "volume_size" {
  description = "Tamanho do disco da VM."
  default = 8
}