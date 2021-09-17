provider "aws" {
  region = "us-west-1"
}

variable "name" {
  description = "Name the instance on deploy"
}

variable "name2" {
  description = "Name 2nd instance on deploy"
}

resource "aws_instance" "devops_01" {
  ami = "ami-0fdf8b5989f22a4e0"
	instance_type = "t2.micro"
  key_name = "portfolio-2021"

  tags = {
    Name = "${var.name}"
  }
}
resource "aws_instance" "devops_02" {
  ami = "ami-0fdf8b5989f22a4e0"
	instance_type = "t2.micro"
	key_name = "portfolio-2021"

	tags = {
	  Name = "${var.name2}"
	}
}
