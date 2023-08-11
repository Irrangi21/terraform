provider "aws" {
region = "ap-southeast-1"
access_key = var.accesskey
secret_key = var.secretkey
}
terraform {
cloud {
organization = "Artifacts"

workspaces {
name = "CLI-workspace"
}
}
}
resource "aws_iam_user" "terraclouduser" {
name = "terraclouduser"
}
resource "aws_iam_group" "iam-group" {
  name = "IAM-Group"
}

