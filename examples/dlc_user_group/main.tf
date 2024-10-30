module "dlc-users" {
  source = "../../modules/dlc_user_group"
  users = {
    nick = {
      user_type = "COMMON"
    }
    steven = {
      user_type = "ADMIN"
      user_id = "200026344885"
    }
  }
  groups = {
    group1 = {
      users = ["nick", "steven"]
    }
    group2 = {
      users = ["steven"]
    }
  }
}