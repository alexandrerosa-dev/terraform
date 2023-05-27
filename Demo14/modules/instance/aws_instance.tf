resource "aws_instance" "foo" {
    ami             = var.ami
    instance_type   = var.instance_type


    network_interface {
        network_interface_id = aws_network_interface.foo.id // junção da placa de rede+nomde da placa(foo)+id
        device_index         = 0
    }

    tags = {
        "Name" = local.instance_name
        "Enviroment" = var.env
    }

}