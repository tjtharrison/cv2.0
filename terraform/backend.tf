terraform {
  backend "s3" {
    bucket = "tjth-state"
    key    = "tjth-cv.state"
    region = "eu-west-1"
  }
}