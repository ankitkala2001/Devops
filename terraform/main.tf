resource "aws_instance" "k8s-node" {

  ami = var.ami

  instance_type = var.instance_type

  key_name = " DevopsDemo"

  tags = {
    Name = "k8s-node"
  }

}
