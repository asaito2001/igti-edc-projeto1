variable "base_bucket_name" {
  default = "datalake-saito-igti-tf"
}

variable "ambiente" {
  description = "AWS environment"
  type        = string
  default     = "producao"
}

variable "numero_conta" {
  description = "AWS account ID"
  type        = number
  default     = "616601637434"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}