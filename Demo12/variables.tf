variable "sg_ingress_ports" {
  type         = list(number)
  description  = "list of ingress ports"
  default      = [8080, 80, 21, 22, 443]
}

variable "sg_egress_ports" {
  type         = list(number)
  description  = "list of egress ports"
  default      = [8080, 80, 21, 22, 443]
}
