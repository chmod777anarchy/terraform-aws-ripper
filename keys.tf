resource "aws_key_pair" "deployer" {
  key_name   = "aws_key"
  public_key = var.ssh_rsa_pubkey
}
