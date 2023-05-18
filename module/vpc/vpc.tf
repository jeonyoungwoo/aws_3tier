resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_vpc
  instance_tenancy     = "default"
  enable_dns_hostnames = true
 
  tags = {
    Name = "Terraform_vpc_test1"
  }
}

resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.cidr_public1
  availability_zone = var.az1

  tags = {
    Name = "public1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.cidr_public2
  availability_zone = var.az2

    tags = {
    Name = "public2"
  }
}

resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.cidr_private1
  availability_zone = var.az1

    tags = {
    Name = "private1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.cidr_private2
  availability_zone = var.az2

    tags = {
    Name = "private2"
  }
}

##igw
/*
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "terraform-igw"
  }
}
*/