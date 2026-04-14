variable "node_role" {
  description = "IAM role for EKS nodes"
  type        = string
}

variable "subnets" {
  description = "Subnets for node group"
  type        = list(string)
}