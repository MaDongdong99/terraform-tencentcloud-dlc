# tencentcloud dlc storage locaiton config


## usage

```terraform

module "store_location" {
  source = "../../modules/store_location"
  enable_custom_storage = true
  storage_location = "cosn://cos-bucket-test-1258685193/"
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
| [tencentcloud_dlc_store_location_config.store_location_config](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/dlc_store_location_config) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_custom_storage"></a> [enable\_custom\_storage](#input\_enable\_custom\_storage) | choose to use custom storage or DLC local storage | `bool` | `true` | no |
| <a name="input_storage_location"></a> [storage\_location](#input\_storage\_location) | cos bucket path. | `string` | `""` | no |

## Outputs

No outputs.
