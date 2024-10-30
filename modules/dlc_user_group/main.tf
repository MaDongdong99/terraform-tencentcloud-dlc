data "tencentcloud_cam_users" "all" {
}

locals {
  user_uins = {
    for user in data.tencentcloud_cam_users.all.user_list: user.name => user.uin
  }
}


resource "tencentcloud_dlc_user" "users" {
  for_each = var.users
  user_id          = try(each.value.user_id, local.user_uins[each.key])
  user_type        = try(each.value.user_type, "COMMON") # "ADMIN"
  user_alias       = each.key
  user_description = try(each.value.user_description, "for terraform test")
}

resource "tencentcloud_dlc_work_group" "work_groups" {
  for_each = var.groups
  work_group_name        = each.key
  work_group_description = try(each.value.description, "dlc workgroup test")
}

resource "tencentcloud_dlc_add_users_to_work_group_attachment" "add_users_to_work_group_attachment" {
  depends_on = [tencentcloud_dlc_user.users]
  for_each = var.groups
  add_info {
    work_group_id = tencentcloud_dlc_work_group.work_groups[each.key].id
    user_ids      = [ for user in try(each.value.users, []): try(var.users[user].user_id, local.user_uins[user]) ]
  }
}