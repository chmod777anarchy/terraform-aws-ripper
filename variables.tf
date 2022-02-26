variable "region" {
  description = "Enter AWS region"
}

variable "ec2_ins_type" {
  description = "Enter instance type"
}

variable "ec2_ins_num" {
  description = "How many instances to run?"
}

variable "ssh_rsa_pubkey" {
  description = "Insert contents of your ssh public key"
}

variable "aws_access_key" { }

variable "aws_secret_key" { }
