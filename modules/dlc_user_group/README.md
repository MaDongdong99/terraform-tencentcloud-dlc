# tencentcloud dlc user and group


## usage

```terraform

module "dlc-users" {
  source = "../../modules/dlc_user_group"
  users = {
    nick = {
    }
  }
  groups = {
    group1 = {
      users = ["nick"]
    }
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
| [tencentcloud_dlc_add_users_to_work_group_attachment.add_users_to_work_group_attachment](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/dlc_add_users_to_work_group_attachment) | resource |
| [tencentcloud_dlc_user.users](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/dlc_user) | resource |
| [tencentcloud_dlc_work_group.work_groups](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/dlc_work_group) | resource |
| [tencentcloud_cam_users.all](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/data-sources/cam_users) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_groups"></a> [groups](#input\_groups) | n/a | `any` | `{}` | no |
| <a name="input_users"></a> [users](#input\_users) | n/a | `any` | `{}` | no |

## Outputs

No outputs.
