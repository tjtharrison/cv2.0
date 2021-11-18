resource "aws_s3_bucket_object" "cv_docker_compose" {
  bucket = local.artifacts_bucket
  key    = "cv/docker-compose.yaml"
  source = "../docker-compose.yaml"
}