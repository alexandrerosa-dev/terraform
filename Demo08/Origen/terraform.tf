terraform {
  requirement_providers = {
    aws = {
        source  = "hashicorp/aws"
        version = "4.30.0"
    }
  }

  backend "s3" {
    bucket  = "empresax-terraform-state"
    key     = "dev/bank/terraform.tfstate"
    region  = "us-east-01"
    dynamodb_table = "terraform-lock-state"
  }
  
}
