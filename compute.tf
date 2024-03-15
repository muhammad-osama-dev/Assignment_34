# Create an EC2 instance
resource "aws_instance" "ec2_instance" {
  ami             = "ami-0c55b159cbfafe1f0" # Specify your desired AMI
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.main.id
  security_groups = [aws_security_group.ec2_sg.name]
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "EC2Instance"
  }
}

# Create an RDS instance
resource "aws_db_instance" "rds_instance" {
  identifier            = "sample-rds-instance"
  allocated_storage     = 20
  engine                = "mysql"
  engine_version        = "5.7"
  instance_class        = "db.t2.micro"
  name                  = "sampledb"
  username              = "admin"
  password              = "adminpassword"
  parameter_group_name  = "default.mysql5.7"
  publicly_accessible   = false
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
}
