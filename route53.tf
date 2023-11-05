resource  "aws_route53_record" "www" {
    zone_id = HOSTEDZONE ID IS NEEDED
    name    = componentName.privateDomain.com
    type    = "CNAME"
    ttl     = 10
    records  = [] 
}

