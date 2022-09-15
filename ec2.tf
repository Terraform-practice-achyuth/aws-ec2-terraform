resource "aws_instance" "created_by_terraform" {

  # Ubuntu Instance
  ami           = "ami-09d56f8956ab235b3"
  instance_type = "t2.micro"

  key_name               = "AWS_MACBOOK_AIR_NEU"
  vpc_security_group_ids = [aws_security_group.my_own_security_group.id]

  user_data = file("init-script.sh")


  tags = {
    "Name" = "Created by Terraform Tag"
  }

}