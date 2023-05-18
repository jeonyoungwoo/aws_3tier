terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"    //4.0부터 가낭 높은 버전을 사용한다는 의미 version= "4.0" 4.0버젼을 사용한다는 의미
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"	//서울리전
  
}