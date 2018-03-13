output "fqdn" {
  value = "${element(concat(aws_route53_record.main.*.fqdn, list("")), 0)}"
}