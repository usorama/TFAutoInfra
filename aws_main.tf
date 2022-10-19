# Create Multiple Subnets within 1 VPC iteratively

# Create VPC
resource "aws_vpc" "uu-aws-vpc" {
    cidr_block = var.vpc_cidr_block
    
    tags = {
      "Name" = "VPC-by-TF"
    }  
}

# Create Subnets in a loop - ver. 2
resource "aws_subnet" "uu-subnets" {
    for_each = var.Subnetlist
    vpc_id = aws_vpc.uu-aws-vpc.id
    cidr_block = each.value.address

    tags = {
      "Name" = each.value.name
    }

    depends_on = [
        aws_vpc.uu-aws-vpc
    ]
}