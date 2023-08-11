provider "aws" {
region = "ap-southeast-1"
access_key = var.accesskey
secret_key = var.secretkey
}
terraform {
cloud {
organization = "Artifacts"

workspaces {
name = "terraform-1"
}
}
}
resource "aws_iam_user" "terraclouduser-1" {
name = "terraclouduser-1"
}
resource "aws_iam_group" "iam-group" {
  name = "IAM-Group"
}

