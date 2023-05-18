module "network" {
  source   = "./module/vpc"
  cidr_vpc = "10.10.0.0/16"
  cidr_public1 = "10.10.10.0/24"
  cidr_public2 = "10.10.20.0/24"
  cidr_private1 = "10.10.30.0/24"
  cidr_private2 = "10.10.40.0/24"
  az1 = "ap-northeast-2a"
  az2 = "ap-northeast-2c"
}
module "network1" {
  source   = "./module/vpc1"
  cidr_vpc = "20.20.0.0/16"
  cidr_public1 = "20.20.10.0/24"
  cidr_public2 = "20.20.20.0/24"
  cidr_private1 = "20.20.30.0/24"
  cidr_private2 = "20.20.40.0/24"
  az1 = "ap-northeast-2a"
  az2 = "ap-northeast-2c"
}