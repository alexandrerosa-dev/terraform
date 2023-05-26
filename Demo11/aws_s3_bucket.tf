resource "aws_s3_bucket" "mybucket" { 
    bucket   = "${local.prefix_bucket}-mybucket-01"
    tags   = {
        "enviroment" = "dev" 
    }
}

resource "aws_s3_bucket" "mybucket" { 
    bucket   = "${local.prefix_bucket}-mybucket-02"
    tags   = {
        "enviroment" = "dev" 
    }
}