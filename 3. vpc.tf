# VPC CIDR은 한번 설정 후 수정이 불가능 하기 때문에 사전에 네트워크 담당자와 IP 주소 확인 필요
resource "aws_vpc" "user30-vpc" {
  cidr_block           = "30.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  tags = {
    Name = "user30-vpc"
  }
}
