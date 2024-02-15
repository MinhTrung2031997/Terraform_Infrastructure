resource "aws_key_pair" "dove-key" {
  key_name   = "dovekey"
  public_key = file("dovekey.pub")
}

resource "aws_instance" "dove-web" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.dove-pub-1.id
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.dove-key.key_name ## create key pair and get a name on aws 
  vpc_security_group_ids = [aws_security_group.dove-stack-sg.id]
  tags = {
    Name    = "my-dove"
    Project = "Dove"
  }

}

resource "aws_ebs_volume" "vol_4_dove" {
  availability_zone = var.ZONE1 // make sure the same zone with aws_subnet.dove-pub-1.id
  size              = 3

  tags = {
    Name = "extr-vol-4-dove"
  }
}

resource "aws_volume_attachment" "atch_vol_dove" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.vol_4_dove.id
  instance_id = aws_instance.dove-web.id
}

output "PublicIP" {
  value = aws_instance.dove-web.public_ip
}