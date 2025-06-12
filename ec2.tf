resource "aws_instance" "example" {
  ami           = "ami-0166fe664262f664c"
  instance_type = "t2.micro"
  subnet_id     = "subnet-02c0c2c84a8a9e383"
  key_name      = "batch19"

  tags = {
    Name = "testec2"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> ./ansible_hosts"
  }
}

