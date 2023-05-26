variable "vpc_name" {
  type         = string
  description  = "Nome da VPC"
}

variable "subnet_name" {
  type         = string
  description  = "Nome da subnet"
}

variable "env" {
  type         = string
  description  = "Ambiente que será provisionado"
}
