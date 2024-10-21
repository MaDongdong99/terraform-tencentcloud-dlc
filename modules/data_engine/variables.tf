variable "data_engine_id" {
  default = ""
  type = string
}
variable "create_data_engine" {
  default = true
  type = bool
}

variable "data_engine" {
  type = any
  default = {}
}