resource "aws_instance" "app" {
  count = var.instance_qtd
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    Name = var.instance_name
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}", 
                            "${aws_security_group.acesso-web.id}"
                            ]
  root_block_device {
    volume_size = var.volume_size

    tags = {
      "Name" = var.instance_name
    }
  }                          
}
