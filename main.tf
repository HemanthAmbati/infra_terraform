resource "aws_vpc" "PP4V" {
    cidr_block = var.cidr_block
    instance_tenancy = var.instance_tenancy
    enable_dns_support = var.enable_dns_support
    enable_dns_hostnames = var.enable_dns_hostnames
    tags = var.name
}
#welcome to Public Subnet
resource "aws_subnet" "Public_PP4V" {
    count = local.public_subnets_length
    vpc_id = aws_vpc.PP4V.id
    cidr_block = var.Public_cidr_block[count.index]
    availability_zone = var.avzone[count.index]
    tags = merge(
        var.name,
        {
        Name = "Public_PP4V"
        }
    )
}

resource "aws_internet_gateway" "PP4V" {
  vpc_id = aws_vpc.PP4V.id
  tags = merge(
        var.name,
        {
        Name = "Public_PP4V"
        }
    )
}
resource "aws_route_table" "Public_PP4V" {
    vpc_id = aws_vpc.PP4V.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.PP4V.id
    }

    tags = merge(
        var.name,
        {
        Name = "Public_PP4V"
        }
    )
}
resource "aws_route_table_association" "public" {
    count = "${length(var.Public_cidr_block)}"
    subnet_id = "${element(aws_subnet.Public_PP4V.*.id, count.index)}"
    route_table_id = "${aws_route_table.Public_PP4V.id}"
}

#welcome to Private Subnet
resource "aws_subnet" "Private_PP4V" {
    vpc_id = aws_vpc.PP4V.id
    cidr_block = var.Private_cidr_block
    tags = merge(
        var.name,
        {
        Name = "Private_PP4V"
        }
    )
}
resource "aws_route_table" "Private_PP4V" {
    vpc_id = aws_vpc.PP4V.id
    tags = merge(
        var.name,
        {
        Name = "Private_PP4V"
        }
    )

}

resource "aws_route_table_association" "Private_PP4V" {
  subnet_id      = aws_subnet.Private_PP4V.id
  route_table_id = aws_route_table.Private_PP4V.id
}
