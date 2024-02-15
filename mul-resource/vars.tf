variable "REGION" {
  default = "us-east-2"
}

variable "ZONE1" {
  default = "us-east-2a"
}

variable "ZONE2" {
  default = "us-east-2b"
}


variable "ZONE3" {
  default = "us-east-2c"
}


variable "AMIS" {
  type = map(any)
  default = {
    "us-east-2" = "ami-0c20d88b0021158c6"
    "us-east-1" = "ami-0e731c8a588258d0d"
  }
}

variable "USER" {
  default = "ec2-user"
}

variable "PUB_KEY" {
  default = "dovekey.pub"
}

variable "PRIV_KEY" {
  default = "dovekey"
}

variable "MYIP" {
  default = "116.98.254.87/32"
}