variable "subnet_id" {
  description = "Subnet for EFS mount"
  type        = string
}

variable "sg_id" {
  description = "Security group for EFS"
  type        = string
}