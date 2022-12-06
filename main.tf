terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  cloud {
    organization = "nttdata-bizsys-ITsol3"
    hostname = "app.terraform.io"

    workspaces {
      name = "state-sample-remote"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-1"
}

# Create a VPC
resource "aws_vpc" "example_sekito" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc-sekitoTerraformCloudtest"
  }
}
