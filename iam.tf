resource "google_project_iam_member" "storage_admin" {
project = "hopeful-list-446012-q4"
role = "roles/storage.admin"
member = "serviceAccount:${google_service_account.infra_automation_sa.email}"
}