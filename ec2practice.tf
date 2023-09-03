/*# use the default region in your provider by using the provider syntax below
provider "aws" {} 
  #region = "us-east-1"
#} */

###EAST######
resource "aws_instance" "ec2east" {
  #count = length(var.countdemo)
  provider = aws.east
  for_each = toset(var.countdemo)
  ami = data.aws_ami.amazon_linux.id #var.ami
  instance_type = var.size
  key_name = "keyforDestop" # get the keypair name from the aws console
  user_data = file("${path.module}/httpd.sh")

  tags = {
    #Name = var.countdemo[count.index]
    Name = "${each.value}-east"
    }
}
 ###WEST#####
resource "aws_instance" "ec2west" {
  #count = length(var.countdemo)
  provider = aws.west
  for_each = toset(var.countdemo)
  ami = data.aws_ami.amazon_linuxwest.id #var.ami
  instance_type = var.size
  #key_name = "keyforDestop" # get the keypair name from the aws console
  user_data = file("${path.module}/httpd.sh")

  tags = {
    #Name = var.countdemo[count.index]
    Name = "${each.value}-west"
  }
}


