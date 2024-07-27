terraform {
  required_version = ">= 0.14.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }

  backend "s3" {
    bucket         = "your-bucket-name"
    key            = "path/to/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}
