# Subnets for mysql databases

resource "aws_db_subnet_group" "mysql_db_subnet_group" {
  name       = "mysql_db_subnet"
  subnet_ids = [module.vpc.private_subnets[local.db_subnet_1], module.vpc.private_subnets[local.db_subnet_2]]

  depends_on = [
    module.vpc
  ]

  tags = {
    Name = "mysql DB Subnet Group"
  }
}

# AWS Mysql DB
resource "aws_db_instance" "mysql_db" {
  allocated_storage    = 20
  db_name              = local.db_mysql_name
  db_subnet_group_name = aws_db_subnet_group.mysql_db_subnet_group.name
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = local.db_instance_class
  username             = "root"
  password             = "rootroot"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

  depends_on = [
    module.vpc,
    aws_security_group.sg_allow_tls,
    aws_db_subnet_group.mysql_db_subnet_group
  ]
}
