
locals {
  data_engine_id = var.create_data_engine ? concat(tencentcloud_dlc_data_engine.data_engine.*.id, [""])[0] : var.data_engine_id
}

resource "tencentcloud_dlc_data_engine" "data_engine" {
  count = var.create_data_engine ? 1 : 0
  engine_type            = try(var.data_engine.engine_type, "spark") # "spark"  Engine type, only support: spark/presto.
  data_engine_name       = try(var.data_engine.data_engine_name, "data_engine") #
  cluster_type           = try(var.data_engine.cluster_type, "spark_cu") # "spark_cu" "testSpark" Engine cluster type, only support: spark_cu/presto_cu.
  mode                   = try(var.data_engine.mode, 1) # 1 # only support 1: ByAmount, 2: YearlyAndMonthly.
  auto_resume            = try(var.data_engine.auto_resume, true) # false
  auto_suspend           = try(var.data_engine.pay_mode, 0) == 0 ? try(var.data_engine.auto_suspend, false) : null # false
  auto_suspend_time      = try(var.data_engine.pay_mode, 0) == 0 ? try(var.data_engine.auto_suspend_time, 10) : null # (Optional, Int) Cluster automatic suspension time, default 10 minutes.
  size                   = try(var.data_engine.size, 16) # 16
  pay_mode               = try(var.data_engine.pay_mode, 0) # (Optional, Int) Engine pay mode type, only support 0: postPay, 1: prePay(default).
  auto_renew             = try(var.data_engine.pay_mode, 0) == 0 ? null : try(var.data_engine.auto_renew, 1)# Engine auto renew, only support 0: Default, 1: AutoRenewON, 2: AutoRenewOFF.
  min_clusters           = try(var.data_engine.min_clusters, 1) # 1
  max_clusters           = try(var.data_engine.max_clusters, 1) # 1
  max_concurrency = try(var.data_engine.max_concurrency, 5)
  default_data_engine    = try(var.data_engine.default_data_engine, false) # false
  cidr_block             = try(var.data_engine.cidr_block, "10.255.0.0/16") # "10.255.0.0/16"
  message                = try(var.data_engine.message, "") # "test spark1"
  time_span              = try(var.data_engine.pay_mode, 0) == 0 ? 3600 : try(var.data_engine.time_span, 1) # (Optional, Int) Engine TimeSpan, prePay: minimum of 1, representing one month of purchasing resources, with a maximum of 120, default 3600, postPay: fixed fee of 3600.
  time_unit              = try(var.data_engine.pay_mode, 0) == 0 ? "h" : "m"

  crontab_resume_suspend = try(var.data_engine.crontab_resume_suspend, 0) #  (Optional, Int) Engine crontab resume or suspend strategy, only support: 0: Wait(default), 1: Kill.
  engine_exec_type       = try(var.data_engine.engine_exec_type, "BATCH") # (Optional, String) Engine exec type, only support SQL(default) or BATCH.
  resource_type =  try(var.data_engine.resource_type, "Standard_CU") # (Optional, String) Engine resource type not match, only support: Standard_CU/Memory_CU(only BATCH ExecType).

  dynamic "data_engine_config_pairs" {
    for_each = try(var.data_engine.data_engine_config_pairs, [])
    content {
      config_item = data_engine_config_pairs.value.config_item
      config_value = data_engine_config_pairs.value.config_value
    }
  }

  lifecycle {
    ignore_changes = [
      time_span, # argument `time_span` cannot be changed
      time_unit,
    ]
  }

}