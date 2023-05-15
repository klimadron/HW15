variable "architecture" {
  type        = string
  default     = "x86_64"
  description = "Architecture of your AMI: can be arm64, or x86_64"
}

variable "manifest_file_name" {
  type        = string
  default     = "manifest.json"
  description = "Manifest file name"
}

locals {
  tags = {
    Name   = "AndriiKlimakhin-packer-${var.architecture}"
    Hillel = "Lesson 20"
  }
  access_key = "$AWS_ACCESS_KEY_ID"
  secret_key = "$AWS_SECRET_ACCESS_KEY"
  region = "us-east-1"
  timestamp = formatdate("YYYYMMDDhhmm", timestamp())
  port = 8081
}