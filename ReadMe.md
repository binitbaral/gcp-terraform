*** Terraform on GCP with github actions ***
This project demonstrates how to create and manage GCP resources using Terraform and fully automate the process using Github Actions

Flow:
- developer pushes the terraform code to github
- Github actions is  triggered 
-workflow authenticates to GCP
- Terraform commands run automatically
- GCP resources are created

## github setup workflow: 
this creates the terraform yml file. 
commit changes dirctly from the github and pull the changes so that i can get the workflow

## authentication explained
Terraform plan  is still running yet i have not created service account locally. it is because of APPLICATION DEFAULT CREDENTIALS(ADC)
It uses google account email to authenticate. suitable for local development only

~ gcloud auth application-default login

## GitHub Actions Authentication
-create a service account and download the sa key which is in json format
-create a Github secrets and paste the key in it.
- authenticate it inside the main.tf


What is Implemented

-GitHub repository created and cloned
-Terraform configuration (main.tf) created
-Local authentication using Application Default Credentials
-GitHub Actions workflow configured for Terraform
-Service Account key stored securely in GitHub Secrets
-CI/CD pipeline executes Terraform automatically on code push