variable "project" {
  default = "ecom"
}

variable "environment" {
  default = "dev"
}

variable "bastion_sg_tags" {
  type    = map(any)
  default = {}
}

# VPN
variable "vpn_ports" {
  type    = list(any)
  default = [22, 443, 1194, 943]
}

# mongodb
variable "mongodb_ports" {
  type    = list(any)
  default = [22, 27017]
}

# mysql
variable "mysql_ports" {
  type    = list(any)
  default = [22, 3306]
}

# redis
variable "redis_ports" {
  type    = list(any)
  default = [22, 6379]
}

variable "rabbitmq_ports" {
  type    = list(any)
  default = [22, 5672]
}

variable "catalogue_ports" {
  type    = list(any)
  default = [22, 8080]
}

variable "user_ports" {
  type    = list
  default = [22, 8080]
}

variable "cart_ports" {
  type    = list
  default = [22, 8080]
}

variable "shipping_ports" {
  type    = list
  default = [22, 8080]
}

variable "payment_ports" {
  type    = list
  default = [22, 8080]
}

variable "frontend_ports" {
  type    = list(any)
  default = [80]
}