provider "aws" {
	region = "us-west-1"
}

variable "name" {
  description = "Name the instance on deploy"
}

resource "aws_instance' "devops_01" {
	ami = "ami-04b9e92b5572fa0d1"
	instace_type = "t2.micro"
	key_name = "portfolio-2021"

	tags = {
		Name = "${var.name}"
	}
}
