variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"

}
variable "instance_tenancy" {
    type = string
    default = "default"

}
variable "enable_dns_support" {
    type = bool
    default = true

}
variable "enable_dns_hostnames" {
    type = bool
    default = true

}
variable "name" {
    type = map
    default = {
        Name = "PP4V"
        Environment = "NonProd"
        MS_Name = "Server-A"
    }

}
variable "Public_cidr_block" {
    type = list
    default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]

}
variable "Private_cidr_block" {
    type = string
    default = "10.0.11.0/24"

}