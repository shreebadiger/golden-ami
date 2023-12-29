resource "aws_instance" "ami" {
  ami = data.aws_ami.ami.id
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0b8cc06a920a3d709"]
   tags = {
   Name = "golden-ami"
 }
}

resource "null_resource" "install" {
    provisioner "remote-exec" {
  connection {
    type     = "ssh"
    user     = data.aws_ssm_parameter.username.value
    password = data.aws_ssm_parameter.password.value
    host     = aws_instance.ami.private_ip
     }
    inline = [ 
      "labauto ansible"
      ]
      
    }
  }