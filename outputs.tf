output "service_account_email" {
value = google_service_account.infra_automation_sa.email
}


output "workload_identity_provider" {
value = "projects/974490845585/locations/global/workloadIdentityPools/ci-cd-pool/providers/github-oidc-provider"
}