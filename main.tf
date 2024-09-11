resource "aws_vpc" "demo1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc1"
  }

}

resource "aws_subnet" "subnet-demo1" {
  vpc_id     = aws_vpc.demo1.id
  cidr_block = "10.0.0.0/17"

  tags = {
    Name = "subnet-1"
  }
}

resource "aws_subnet" "subnet-demo2" {
  vpc_id     = aws_vpc.demo1.id
  cidr_block = "10.0.128.0/17"

  tags = {
    Name = "subnet-2"
  }
}
