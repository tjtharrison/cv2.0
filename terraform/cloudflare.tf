resource "cloudflare_record" "tjth_cv" {
  zone_id = var.cloudflare_zone_id
  name    = "cv-2.0"
  value   = aws_instance.tjth_cv.public_ip
  type    = "A"
  ttl     = 3600
}
