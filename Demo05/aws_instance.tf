resource "aws_instance" "foo" {
    ami             = "ami-052efd3f9dad4825"
    instance_type   = "t2.micro"


    network_interface {
        network_interface_id = aws_network_interface.foo.id // junção da placa de rede+nomde da placa(foo)+id
        device_index         = 0
    }

    tags = {
        "Name" = var.ec2_name
    }

}