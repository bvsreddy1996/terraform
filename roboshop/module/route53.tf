resource "aws_route53_record" "www" {
  zone_id = "Z0406562GVK6OKJSYSF5"
  name    = var.COMPONENT
  type    = "A"
  ttl     = "300"
  records = [aws_spot_instance_request.cheap_worker.private_ip]
}
