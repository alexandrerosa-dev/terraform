resource "aws_s3_bucket" "novo" { 
    bucket = "ed-my-bucket" 
    tags   = {
        "enviroment" = "dev" 
    }
}