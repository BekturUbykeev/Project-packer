variable "region" {
  default     = "us-east-1"
}

variable "aws_key_pair" {
  default     = "my_laptop_key"
}

variable "key_name" {
  default     = "deployer"
}

variable "instance_type" {
  default     = "t2.micro"
}

variable "instance_name" {
  default     = "group-2"
}

variable "port" {
  type    = list(number)
  default = [22, 80]
}

variable vpc_cidr {
  default = "10.0.0.0/16"
  type = string
}

variable subnet1 {
  default = "10.0.1.0/24"
}

variable subnet2 {
  default = "10.0.2.0/24"
}

variable subnet3 {
  default = "10.0.3.0/24"
}

variable "vpc_name" {
  type        = string
  default     = "group-2"
}

variable "security_group_name" {
  type        = string
  default     = "group-2"
}