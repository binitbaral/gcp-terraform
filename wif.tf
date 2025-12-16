resource "google_iam_workload_identity_pool" "github_pool" {
project = "hopeful-list-446012-q4"
workload_identity_pool_id = "ci-cd-pool"
display_name = "GitHub Actions CI/CD Pool"
}


resource "google_iam_workload_identity_pool_provider" "github_provider" {
project = "hopeful-list-446012-q4"
workload_identity_pool_id = google_iam_workload_identity_pool.github_pool.workload_identity_pool_id
workload_identity_pool_provider_id = "github-oidc-provider"


display_name = "GitHub OIDC Provider"


oidc {
issuer_uri = "https://token.actions.githubusercontent.com"
}


attribute_mapping = {
"google.subject" = "assertion.sub"
"attribute.repository" = "assertion.repository"
}


attribute_condition = "attribute.repository == 'binitbaral/gcp-terraform'"
}


resource "google_service_account_iam_member" "wif_binding" {
service_account_id = google_service_account.infra_automation_sa.name
role = "roles/iam.workloadIdentityUser"
member = "principalSet://iam.googleapis.com/projects/974490845585/locations/global/workloadIdentityPools/ci-cd-pool/attribute.repository/binitbaral/gcp-terraform"
}