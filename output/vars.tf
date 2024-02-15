variable "REGION" {
  default = "us-east-2"
}

variable "ZONE1" {
  default = "us-east-2a"
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