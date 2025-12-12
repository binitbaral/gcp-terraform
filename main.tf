resource "google_storage_bucket" "my-bucket" {
  name          = "no-public-access-bucket"
  project       = "hopeful-list-446012-q4"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}    