variable CIDR {
    type = map
    default = {
        PROD = "10.0.0.0/16"
        NONPROD = "11.0.0.0/16"
    }
}

variable ENV {
    type = string
    default = "NONPROD"
}

variable PROD {
     type = map
     default = {
         Name = "GREV_PROD"
         Environment = "PROD"
        }
}

variable NONPROD {
    type = map
    default = {
            Name = "GREV_NONPROD"
            Environment = "NONPROD"
        }
}

variable pub_subnet_cidr {
     type = map
     default = {
        subnet-nonprod = {
            Name =  { Name = "Pub-east1a-NonProd"
                    AppID = "Np" }
            cidr = "11.0.1.0/24"
            az = "us-east-1a"
        }
        subnet-eks-Nonprod = {
            Name = { Name = "Pub-east1b-eks-NonProd"
                    AppID = "EKS" }
            cidr = "11.0.2.0/24"
            az = "us-east-1b"
        }
        subnet-workhub-Nonprod = {
            Name = { Name = "Pub-east1c-workhub-NonProd"
                    AppID = "WHUV" }
            cidr = "11.0.3.0/24"
            az = "us-east-1c"
        }
     }
}


variable priv_subnet_cidr {
     type = string
     default = "10.0.0.5/24"
}

variable az_pub {
     type = list
     default = []
}
