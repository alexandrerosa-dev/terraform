variable "image_id" {
  type         = string
  description  = "The id of the machine image (AMI)"
  
  validation {
    # regex(...) fails if it cannot find a match
    condition = can(regex("^ami-", var.image_id))
    error_message = "The image_id value must be a valid AMI id, starting with ami-"
  }
}


# can é utilizado para verificar se o valor é verdadeiro ou falso


