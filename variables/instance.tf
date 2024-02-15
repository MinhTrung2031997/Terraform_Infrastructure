resource "aws_instance" "dove-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "dove-key" ## create key pair and get a name on aws 
  vpc_security_group_ids = ["sg-07515e647a948905f"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}