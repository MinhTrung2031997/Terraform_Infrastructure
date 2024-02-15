provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "intro" {
  ami                    = "ami-0c20d88b0021158c6"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "dove-key" ## create key pair and get a name on aws 
  vpc_security_group_ids = ["sg-07515e647a948905f"]
  tags = {
    name = "Dove-Instance"
    Project = "Dove"
  }
}