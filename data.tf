data "aws_ami" "ami" {
most_recent      = true
name_regex       = "Centos-8-DevOps-Practice"
owners           = ["973714476881"]
}

data "aws_ssm_parameter" "username" {
  name = "ssh.username"
}
data "aws_ssm_parameter" "password" {
  name = "ssh.password"
}