# Subnets for mysql databases

resource "aws_db_subnet_group" "mysql_db_subnet_group" {
  name       = "mysql_db_subnet"
  subnet_ids = [module.vpc.private_subnets[local.db_subnet_1], module.vpc.private_subnets[local.db_subnet_2]]

  tags = {
    Name = "mysql DB Subnet Group"
  }
}
