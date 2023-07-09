module "PP4V" {
    source = "../Project-K"
    vpc_name = var.APP_ID
    vpc_cidr_block = var.PP4V_vpc_cidr
    vpc_tags = var.PP4V_tags
    igw_tags = var.PP4V_tags
    subnet_cidr_pub = var.pub_subnet_list
    subnet_cidr_priv = var.priv_subnet_list
    priv_subnet_tags = var.priv_tags
    pub_subnet_tags = var.pub_tags
    route_tags = var.PP4V_tags
    
  
}