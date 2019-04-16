provider "aws" {
  profile                 = "demo_user1"
  region                  = "ap-south-1"
  shared_credentials_file = "/home/raj/.aws/credentials"
}


resource "aws_instance" "my-instance" {
  count         = "${var.instance_count}"
  ami           = "${lookup(var.ami,var.aws_region)}"
  instance_type = "${var.instance_type}"
  key_name      = "aws"
}
