resource "aws_security_group" "sg_allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic for mysql"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "TLS from VPC"
    from_port   = local.mysql_port
    to_port     = local.mysql_port
    protocol    = local.tcp
    cidr_blocks = local.anywhere
  }

  depends_on = [
    module.vpc
  ]

  tags = {
    Name = "sg_open_mysql"
  }
}
