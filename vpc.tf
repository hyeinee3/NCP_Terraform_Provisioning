resource "ncloud_vpc" "vpc" {
  name = "${var.resource_prefix}-vpc"
  ipv4_cidr_block = var.vpc_cidr
}