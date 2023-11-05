resource  "aws_route53_record" "record" {
    zone_id = data.terraform_remote_state.vpc.outputs.PRIVATE_SUBNET_IDS 
    name    = "mongodb-$(var.ENA).$(data.terraform_remote_state.vpc.outputs.PRIVATE_SUBNET_NAME)"
    type    = "CNAME"
    ttl     = 10
    records  = [aws_docdb_cluster.docdb.endpoint] 
}

