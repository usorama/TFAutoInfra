module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.aws-vpc-name
  cidr = var.aws-vpc-cidr

  azs             = [format("%sa", var.region), format("%sb", var.region), format("%sc", var.region)]
  private_subnets = var.aws-private-cidrs
  public_subnets  = var.aws-public-cidrs

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
