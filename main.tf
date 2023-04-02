provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "actions" {
  cidr_block = "10.0.0.0/20"

  tags = {
    Name = "tabe237"
    Team = "DevOps"
    Env  = "Dev"
  }

}

terraform {
  required_version = "~>1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.0" #optional but recommended in production
    }
  }
  backend "s3" {
    bucket = "bootcamp30-7-tabe"
    key = "dev/terraform.tfstate"
    #dynamoDb_table = "terraform-lock"
    region = "us-west-2"
  }
}

  