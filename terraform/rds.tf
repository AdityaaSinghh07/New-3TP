resource "aws_db_subnet_group" "db_subnets" {
  subnet_ids = [aws_subnet.private.id]
}

resource "aws_db_instance" "postgres" {
  identifier     = "app-db"
  engine         = "postgres"
  instance_class = "db.t3.micro"

  allocated_storage = 20

  username = "admin"
  password = "StrongPassword123!"

  db_subnet_group_name = aws_db_subnet_group.db_subnets.name

  publicly_accessible = false

  skip_final_snapshot = true
}
