resource "aws_s3_bucket" "mybucket" { 
    bucket = "ed-my-bucket" 
    tags   = {
        "enviroment" = "dev" 
    }
}