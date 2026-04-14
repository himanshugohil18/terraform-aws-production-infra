variable "vpc_id" {}
variable "igw_id" {}
variable "public_subnets" { type = list(string) }

variable "private_subnets" {
  type = list(string)
}

variable "nat_id" {}