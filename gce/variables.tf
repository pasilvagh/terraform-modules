variable "environment" {
  type = string
}
variable "region" {
  type = string
}
variable "zone" {
  type = string
}
variable "subnetwork_id" {
  type = string
}
variable "server_count" {
  type = number
}
variable "server_name" {
  type = string
}
variable "machine_type" {
  type = string
}
variable "image" {
  description = "Boot Disk Image"
  type = string
}