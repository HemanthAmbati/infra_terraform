resource "aws_vpc" "survey_hub" {
    cidr_block = var.ENV == "PROD" ? var.CIDR.PROD : var.CIDR.NONPROD
    tags = var.ENV == "PROD" ? var.PROD : var.NONPROD
}

resource "aws_subnet" "Public" {
     for_each = var.pub_subnet_cidr
     vpc_id = aws_vpc.survey_hub.id
     cidr_block = each.value.cidr
     availability_zone = each.value.az
     tags = each.value.Name
     
}
