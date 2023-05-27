variable "subnet_id" {
  type         = string
  description  = "Subnet ID to network interface"
}

variable "network_prefix" {
  type         = number
  description  = "The network prefix to VPC and subnet"
}
