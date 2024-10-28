

resource "tencentcloud_dlc_store_location_config" "store_location_config" {
  store_location = var.storage_location # "cosn://cos-bucket-test-1258685193/"
  enable         = var.enable_custom_storage ? 1 : 0
}