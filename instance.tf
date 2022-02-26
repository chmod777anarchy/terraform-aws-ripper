resource "aws_instance" "ubuntu_instance" {
  count                  = var.ec2_ins_num
  ami                    = data.aws_ami.ubuntu_ami[0].id
  instance_type          = var.ec2_ins_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  key_name               = "aws_key"
  user_data = file("startup.sh")

  connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "ubuntu"
      timeout     = "4m"
   }

} 

data "aws_ami" "ubuntu_ami" {
  most_recent = true
  owners      = ["099720109477"]
  count       = 1

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-????????"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}
