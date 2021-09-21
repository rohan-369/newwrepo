terraform {
   required_providers {
       aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
       }
   }
}

provider "aws" {
   region = "us-east-1"
   access_key = "AKIATEC3J46JHN4OPV55"
   secret_key = "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"
}
resource "aws_instance" "web" {
  ami            = "ami-0747bdcabd34c712a"
  instance_type  = "t2.micro"
  key_name       = "terraform"
  vpc_security_group_ids = ["sg-f86b80e9"]
  subnet_id              = "subnet-4c17352a"
}

resource "aws_default_vpc" "main"{
    tags = {
        Name = "Default VPC"
    }
}  