/*# use the default region in your provider by using the provider syntax below
provider "aws" {} 
  #region = "us-east-1"
#} */
#####  Not working properly because user data can't download a file from internet ####

resource "aws_instance" "maven" {
  #count = length(var.countdemo)
  provider = aws.east
  ami = data.aws_ami.amazon_linux.id #var.ami
  instance_type = var.size
  key_name = "keyforDestop" # get the keypair name from the aws console
  user_data = file("${path.module}/maven.sh")

  tags = {
    #Name = var.countdemo[count.index]
    Name = "maven"
    }
}

resource "aws_instance" "sonarqube" {
  #count = length(var.countdemo)
  provider = aws.east
  ami = data.aws_ami.amazon_linux.id #var.ami
  instance_type = var.size
  key_name = "keyforDestop" # get the keypair name from the aws console
  user_data = file("${path.module}/sonar.sh")

  tags = {
    #Name = var.countdemo[count.index]
    Name = "sonarqube"
    }
}

resource "aws_instance" "nexus" {
  #count = length(var.countdemo)
  provider = aws.east
  ami = data.aws_ami.amazon_linux.id #var.ami
  instance_type = var.size
  key_name = "keyforDestop" # get the keypair name from the aws console
  user_data = file("${path.module}/nexus.sh")

  tags = {
    #Name = var.countdemo[count.index]
    Name = "nexus"
    }
}

resource "aws_instance" "tomcat" {
  #count = length(var.countdemo)
  provider = aws.east
  ami = data.aws_ami.amazon_linux.id #var.ami
  instance_type = var.size
  key_name = "keyforDestop" # get the keypair name from the aws console
  user_data = file("${path.module}/tomcat.sh")

  tags = {
    #Name = var.countdemo[count.index]
    Name = "tomcat"
    }
}

resource "aws_instance" "download" {
  #count = length(var.countdemo)
  provider = aws.east
  ami = data.aws_ami.amazon_linux.id #var.ami
  instance_type = var.size
  key_name = "keyforDestop" # get the keypair name from the aws console
  user_data = file("${path.module}/downtest.sh")

  tags = {
    #Name = var.countdemo[count.index]
    Name = "downloadTest"
    }
}



