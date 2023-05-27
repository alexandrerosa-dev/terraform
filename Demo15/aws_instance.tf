resource "aws_instance" "foo" {
    ami             = var.image_id
    instance_type   = "t2.micro"
    #associate_public_ip_address = true

    lifecycle {
        # The AMI ID must referto an AMI that contains an operating system
        # for the 'x86_64' architecture.
        precondition {
            condition     = data.aws_ami.example.architecture == "x86_64"
            error_message ="The selected AMI must be for the x86_64 architecture" 
        } 

        # The EC@ instance must be allocated a public DNS hostname
         postcondition {
            condition   = self.public_ip != ""
            error_message = "EC2 instance must be in a VPC that has public DNS"
        }
    }

    network_interface {
        network_interface_id = aws_network_interface.foo.id
        device_index         = 0
    }

    tags = {
        "Name" = var.ec2_name
        "Enviroment" = "MyEnv"
    }
}