/* HCL - Hashicorp Configuration Language
   Linguagem declarativa para gerenciamento de configurações */

resource "aws_s3_bucket" "datalake" {
  # Parâmetros de configuracao do recurso escolhido
  bucket = "${var.base_bucket_name}-${var.ambiente}"
  acl    = "private"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  tags = {
    igti = "edc"
  }
}