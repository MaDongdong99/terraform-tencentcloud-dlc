# tencentcloud dlc data engine

> TencentCloud Data Lake Compute

Tencent Cloud Data Lake Compute provides agile and efficient data lake analysis and computing services to greatly reduce your costs to set up and use data analysis services while improving your data agility.

Reference: https://www.tencentcloud.com/products/dlc


## usage

```terraform

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

```
