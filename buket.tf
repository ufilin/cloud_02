resource "yandex_storage_bucket" "ufilin_bucket" {
  bucket     = "ufilin-bucket-01102026"
  access_key = var.ufilin_bucket_access_key
  secret_key = var.ufilin_bucket_secret_key
}

resource "yandex_storage_object" "ufilin_object" {
  bucket       = yandex_storage_bucket.ufilin_bucket.bucket
  key          = "file.jpeg"
  access_key   = var.ufilin_bucket_access_key
  secret_key   = var.ufilin_bucket_secret_key
  source       = "./images/file.jpeg"
  content_type = "image/jpeg"
  acl          = "public-read"
}