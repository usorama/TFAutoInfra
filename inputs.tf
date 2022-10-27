variable "region" {
  type        = string
  description = "region of AWS VPC"
  default     = "ap-south-1"
}

variable "aws-vpc-name" {
  type        = string
  description = "AWS VPC name"
}

variable "aws-vpc-cidr" {
  type        = string
  description = "AWS VPC CIDR"
}

variable "aws-private-cidrs" {
  type        = list(string)
  description = "AWS Subnets"
}

variable "aws-public-cidrs" {
  type        = list(string)
  description = "AWS Public Subnets"
}
