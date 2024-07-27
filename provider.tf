provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}
