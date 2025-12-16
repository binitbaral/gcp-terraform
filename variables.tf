variable "project_id" {
description = "GCP Project ID"
type = string
}


variable "project_number" {
description = "GCP Project Number"
type = string
}


variable "region" {
description = "Default region"
type = string
default = "us-central1"
}


variable "github_repo" {
description = "GitHub repository in owner/repo format"
type = string
default = "binit77x/gcp-terraform"
}


variable "bucket_name" {
description = "Cloud Storage bucket name"
type = string
}