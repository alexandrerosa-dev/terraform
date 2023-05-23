resource "aws_s3_bucket" "mybucket" { // recurso, nome do recurso, nome dado
    bucket = "ed-my-bucket" // parametro e nome do parametro
    tags   = {
        "enviroment" = "dev" // nome da tag e valor
    }
}

/* 
Abra o terminal e execute: 
terraform init  -iniciar o terraform
terraform validate - validará se algo foi adicionado fora dos padrões do HCL dentro do codigo
terraform fmt - valida se o arquivo está alinhado corretamente
terraform plan - exibe em detalhes o que será criado e o que será alterado, ou destruído
terraform apply - para construir o bucket na AWS. Este comando também faz um resumo do que será feito
terraform destroy - para destruir o bucket e também exibe um overview
terraform apply --auto-aprove - com este comando o terraform não solicita mais aprovação antes de executar o apply ou o destroy
*/