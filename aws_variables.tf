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

# Subnet Count
variable "subnets_per_vpc" {
  type = number
  default = 6
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

# Common to both 
  variable "Subnetlist" {
    type = map(object({
      name    = string
      address = string
    }))    
  }

# Azure Variables

# Azure Region
variable "az_location" {
    type = string 
    description = "Resource Group Location"
    default = "southindia"  
}

variable "res_group_name" {
    type = string 
    description = "Azure Resource Group"
    default = "uu-az-rsg"
}

variable "virtual_net_name" {
    type = string 
    description = "Azure Virtual Network Name"
    default = "uu-az-vnet"
}

variable "az_vpc_cidr" {
  type = list(string)
  description = "VPC CIDR"
  default = ["10.10.0.0/16"]
}