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
