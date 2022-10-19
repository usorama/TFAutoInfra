# AWS Region
variable "aws_region" {
    type = string 
    description = "AWS Region"
    default = "ap-south-1"  
}

# Availability Zone
variable "az" {
  type = string 
  description = "AWS AZ"
  default = "ap-south-1"
}

# VPC CIDR
variable "vpc_cidr_block" {
  type = string 
  description = "VPC CIDR"
  default = "10.10.0.0/16"
}

# Subnet CIDR Blocks
variable "subnet_cidr_blocks" {
    type = list(string)
    default = [ 
        "10.10.0.0/24",
        "10.10.1.0/24",
        "10.10.2.0/24",
        "10.10.3.0/24",
        "10.10.4.0/24",
        "10.10.5.0/24"
         ]    
  }

  variable "Subnetlist" {
    type = map(object({
      name    = string
      address = string
    }))
    default = {}    
  }