variable "instance_ami" {
  description = "The AMI ID for the instance"
}

variable "instance_type" {
  description = "The instance type for the instance"
}

resource "aws_instance" "testing-vm" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
