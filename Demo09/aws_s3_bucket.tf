resource "aws_s3_bucket" "novo" { 
    count = 2
    bucket = "ed-my-bucket-${count.index}" 
    tags   = {
        "enviroment" = "dev" 
    }
}