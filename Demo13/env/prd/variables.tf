variable "ec2_name" {
  type         = string
  description  = "Nome da instância do EC2"
}

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