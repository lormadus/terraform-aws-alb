resource "aws_vpc" "user30-vpc" {
  cidr_block           = "30.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  tags = {
    Name = "user30-vpc"
  }
}