resource "aws_vpc" "terrform_aws"{
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "terrform_aws"
    }
}