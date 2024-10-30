
module "dlc" {
  source = "../../modules/data_engine"
  create_data_engine = true
  data_engine = {
    data_engine_name = "test-dlc-1"
    engine_type = "spark"  #  Engine type, only support: spark/presto.
    engine_exec_type = "BATCH" # Engine exec type, only support SQL(default) or BATCH.
    resource_type =  "Standard_CU" # Engine resource type not match, only support: Standard_CU/Memory_CU(only BATCH ExecType).
  }
}