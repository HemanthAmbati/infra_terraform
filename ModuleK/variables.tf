variable "APP_ID" {
    default = "PP4V_nonprod_wlns"
  
}

variable "PP4V_vpc_cidr" {
     type = string
     default = "12.0.0.0/16"
   
}

variable "PP4V_tags" {
    type = map
    default = {
        Name = "PP4V"
        Group = "VZI"
        Kind = "application"
        Environment = "NonProd"
    }

}

variable "igw_tag" {
    type = map
    default = {}
}

variable "pub_subnet_list" {
     type = list
     default = ["12.0.1.0/24","12.0.2.0/24"]
   
}

variable "pub_tags" {
    type = map
    default = {
        subnet_group = "pub_nonprod_PP4V"
        APP = "Inbound"}
   
}

variable "priv_subnet_list" {
     type = list
     default = ["12.0.4.0/24","12.0.5.0/24"]
   
}

variable "priv_tags" {
    type = map
    default = {
        subnet_group = "priv_nonprod_PP4V"
        APP = "outbound"}
   
}

