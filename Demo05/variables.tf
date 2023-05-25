variable "name" { // "name" é nome do bucket
    description = "Nome do bucket" 
    type = string // tipo da variável
}

variable "env" { // "env" é o ambiente que será provisionado
    description = "Ambiente que será provisionado" 
    type = string // tipo da variável
}

/*
Agora no arquivo aws_s3_bucket.tf é possível
mudar o nome do parâmeto para var.name
*/

/*
Para mudar o nome da variável via terminal:
terraform plan -var="name=exemplo-ead-01"
*/