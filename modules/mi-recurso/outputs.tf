output "bucket_name" {
  description = "Nombre del bucket creado por el módulo"
  value       = aws_s3_bucket.this.bucket
}
