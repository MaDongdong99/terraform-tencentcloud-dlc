# tencentcloud dlc data engine



## usage

```terraform

module "dlc" {
  source = "../../modules/data_engine"
  data_engine = {
    data_engine_name = "test-dlc-1"
  }
}

```
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |
| <a name="requirement_tencentcloud"></a> [tencentcloud](#requirement\_tencentcloud) | >=1.81.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tencentcloud"></a> [tencentcloud](#provider\_tencentcloud) | >=1.81.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tencentcloud_dlc_data_engine.data_engine](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/dlc_data_engine) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_data_engine"></a> [create\_data\_engine](#input\_create\_data\_engine) | n/a | `bool` | `true` | no |
| <a name="input_data_engine"></a> [data\_engine](#input\_data\_engine) | n/a | `any` | `{}` | no |
| <a name="input_data_engine_id"></a> [data\_engine\_id](#input\_data\_engine\_id) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
