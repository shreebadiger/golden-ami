resource "aws_instance" "ami" {
  ami = data.aws_ami.ami.id
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0b8cc06a920a3d709"]
   tags = {
   Name = "golden-ami"
 }
}