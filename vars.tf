variable "ami" {
  type = "map"

  default = {
    "ap-south-1" = "ami-0620d12a9cf777c87"
   
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

variable "subnet_id"{
  default = "subnet-0e40da4863b178886"
}


 


