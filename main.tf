resource "aws_route53_record" "main" {
  count   = "${var.production}"
  zone_id = "${var.zone-id}"
  name    = "${var.name}"
  type    = "${var.type}"

  alias {
    name                   = "${var.alias-name}"
    zone_id                = "${var.alias-zone-id}"
    evaluate_target_health = true
  }
}