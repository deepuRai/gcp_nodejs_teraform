# Create new storage bucket in the US multi-region
# with coldline storage
resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "deepak_test_bucket" {
  name          = "test-new-bucket"
  project       = "	sunlit-aura-424417-v0"
  location      = "US"
  storage_class = "COLDLINE"

  uniform_bucket_level_access = true
}