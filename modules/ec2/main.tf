resource "aws_instance" "web" {
  count         = 2
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = count.index == 0 ? var.subnet_id_a : var.subnet_id_b
  vpc_security_group_ids = [var.security_group]

  user_data = <<-EOF
              #!/bin/bash
              yum install -y nginx docker
              systemctl start nginx
              systemctl enable nginx
              systemctl start docker
              systemctl enable docker
              EOF

  tags = { Name = "web-${count.index}" }
}