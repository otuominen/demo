# Latest SLE 15.6 AMI
data "aws_ami" "hostos" {
  most_recent = true
  owners      = ["013907871322"]

  filter {
    name   = "name"
    values = ["suse-sles-15-sp6*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}
