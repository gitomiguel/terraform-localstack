variable "bucket_name" {
  description = "Nombre del bucket S3 que se va a crear"
  type        = string
}

variable "force_destroy" {
  description = "Permite eliminar el bucket aunque tenga objetos dentro"
  type        = bool
  default     = true
}
