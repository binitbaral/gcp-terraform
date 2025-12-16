resource "google_service_account" "infra_automation_sa" {
account_id = "infra-automation-sa"
display_name = "Terraform Infra Automation Service Account"
project = "hopeful-list-446012-q4"
}