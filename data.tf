data "aws_ami" "amazon_linux" {
  provider = aws.east
  most_recent = true
  owners = ["137112412989"]
  
  filter {
    name = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  } 

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }  
    
}

data "aws_ami" "amazon_linuxwest" {
  provider = aws.west
  most_recent = true
  owners = ["137112412989"]
  
  filter {
    name = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  } 

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }  
    
}