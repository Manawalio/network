resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "example_subnet_1" {
  vpc_id                  = aws_vpc.example.id
  cidr_block              = var.subnet_cidr_block_1
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_name_1
  }
}

resource "aws_subnet" "example_subnet_2" {
  vpc_id                  = aws_vpc.example.id
  cidr_block              = var.subnet_cidr_block_2
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_name_2
  }
}

resource "aws_internet_gateway" "example" {
  vpc_id = aws_vpc.example.id
  tags = {
    Name = var.igw_name
  }
}

resource "aws_route_table" "example_route_table_1" {
  vpc_id = aws_vpc.example.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.example.id
  }
  tags = {
    Name = var.route_table_name_1
  }
}

resource "aws_route_table" "example_route_table_2" {
  vpc_id = aws_vpc.example.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.example.id
  }
  tags = {
    Name = var.route_table_name_2
  }
}

resource "aws_route_table_association" "example_rta_1" {
  subnet_id      = aws_subnet.example_subnet_1.id
  route_table_id = aws_route_table.example_route_table_1.id
}

resource "aws_route_table_association" "example_rta_2" {
  subnet_id      = aws_subnet.example_subnet_2.id
  route_table_id = aws_route_table.example_route_table_2.id
}
