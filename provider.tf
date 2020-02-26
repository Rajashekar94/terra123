provider "aws" {
  profile                 = "terraform"
  region                  = "ap-south-1"
  shared_credentials_file = "/home/raja/.aws/credentials"
}


resource "aws_instance" "my-instance" {
  count         = "${var.instance_count}"
  ami           = "${lookup(var.ami,var.aws_region)}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.subnet_id}"
  key_name      = "aws"
}

output "private_ip" {
  value       = "${aws_instance.my-instance.*.private_ip}"
}
