output "ec2" {
    value = aws_instance.foo // info da maquina que será criada
}

output "ec2_private_ip" {
    value = aws_instance.foo.private_ip
}

// Exemplo abaixo de como filtrar uma informação específica no output

output "ec2_ami" {
    value = aws_instance.foo.ami
}