variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ubuntu_ami" {
  description = "Ubuntu 24.04 LTS AMI for us-east-1"
  default     = "ami-0f8a61b66d1accaee"
}

variable "key_name" {
  description = "Name of the EC2 key pair"
  default     = "dream-key"
}