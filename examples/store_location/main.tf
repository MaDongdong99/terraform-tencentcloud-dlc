module "store_location" {
  source = "../../modules/store_location"
  enable_custom_storage = true
  storage_location = "cosn://cos-bucket-test-1258685193/"
}