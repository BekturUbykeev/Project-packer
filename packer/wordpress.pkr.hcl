packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "wordpress" {
  region        = var.region
  instance_type = var.instance_type

  source_ami_filter {
    filters = {
      "name"                = "amzn2-ami-hvm-*-x86_64-gp2"
      "virtualization-type" = "hvm"
      "root-device-type"    = "ebs"
    }
    owners      = ["137112412989"] # Amazon
    most_recent = true
  }

  ssh_username = "ec2-user"
  ami_name     = "wordpress-image-{{timestamp}}"
}

build {
  sources = [
    "source.amazon-ebs.wordpress"
  ]

  provisioner "shell" {
    script = "wordpress.sh"
  }
}






