variable "size" {
  type = string
  default = "t2.micro"
  
}

variable "countdemo" {
  type = list(string)
  default = [ "stage", "finance", "sale"]
  
}

variable "ami" {
  type = string
  default = "ami-051f7e7f6c2f40dc1"
  
}

variable "eastside" {
  type = string
  default = "us-east-1"
}

variable "westside" {
  type = string
  default = "us-west-1"
}

