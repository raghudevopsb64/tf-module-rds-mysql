resource "aws_route53_record" "elastic" {
  zone_id = var.PRIVATE_HOSTED_ZONE_ID
  name    = "${var.COMPONENT}-redis-${var.ENV}.roboshop.internal"
  type    = "CNAME"
  ttl     = "300"
  records = [aws_elasticache_cluster.escluster.cache_nodes[0].address]
}

