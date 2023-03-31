provider "aws"{
   region =  "us-west-2"
}


resource "aws_vpc" "actions" {
    cidr_block = "10.0.0.0/20"

    tags = {
      Name = "tabe237"
    }
}

  