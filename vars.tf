variable "ami" {
  type = "map"

  default = {
    "ap-south-1" = "ami-007d5db58754fa284"
    "ap-south-1" = "ami-007d5db58754fa284"
  }
}

variable "instance_count" {
  default = "2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "aws_region" {
  default = "ap-south-1"
}
