variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "my_vpc" {
  description = "Name of the VPC"
  type        = string
  default     = "vpc"
}

variable "subnet_cidr_block_1" {
  description = "CIDR block for the first subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_cidr_block_2" {
  description = "CIDR block for the second subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "subnet_name_1" {
  description = "Name of the first subnet"
  type        = string
  default     = "example-subnet-1"
}

variable "subnet_name_2" {
  description = "Name of the second subnet"
  type        = string
  default     = "example-subnet-2"
}

variable "availability_zone_1" {
  description = "Availability zone for the first subnet"
  type        = string
  default     = "us-west-2a"
}

variable "availability_zone_2" {
  description = "Availability zone for the second subnet"
  type        = string
  default     = "us-west-2b"
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
  default     = "example-igw"
}

variable "route_table_name_1" {
  description = "Name of the first route table"
  type        = string
  default     = "example-route-table-1"
}

variable "route_table_name_2" {
  description = "Name of the second route table"
  type        = string
  default     = "example-route-table-2"
}
