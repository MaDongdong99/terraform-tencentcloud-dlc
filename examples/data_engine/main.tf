
module "dlc" {
  source = "../../modules/data_engine"
  data_engine = {
    data_engine_name = "test-dlc-1"
  }
}