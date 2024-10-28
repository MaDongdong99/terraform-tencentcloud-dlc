variable "enable_custom_storage" {
  default = true
  type = bool
  description = "choose to use custom storage or DLC local storage"
}
variable "storage_location" {
  default = ""
  type = string
  description = "cos bucket path."
}