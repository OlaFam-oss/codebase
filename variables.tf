variable "ec2_ami" {
  description = "This is variable to manage ec2 AMI"
  type        = string
  default     = "ami-04f7efe62f419d9f5"
}

variable "ubuntu_linux_ami" {
  description = "This is a variable to manage ubuntu AMI"
  type        = string
  default     = "ami-01dd271720c1ba44f"
}

variable "ec2_instance_type" {
  description = "This is a variable to manage instance type"
  type        = string
  default     = "t2.micro"
}

variable "ec2_key_name" {
  description = "This is a variable to manage ec2 key name"
  type        = string
  default     = "test_keypair"
}