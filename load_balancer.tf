## This configuration was generated by terraform-provider-oci

resource oci_load_balancer_load_balancer export_wordpress_lb {
  compartment_id = var.compartment_ocid
  defined_tags = {
    "ArchitectureCenter\deploy-wordpress-cms-with-mysql-dbs-85d2.release" = "1.5"
    "Oracle-Tags.CreatedBy"                                               = "default/iljinjang84@gmail.com"
    "Oracle-Tags.CreatedOn"                                               = "2022-06-16T12:56:52.568Z"
  }
  display_name = "wordpress_lb"
  freeform_tags = {
  }
  ip_mode    = "IPV4"
  is_private = "false"
  network_security_group_ids = [
  ]
  #reserved_ips = <<Optional value not found in discovery>>
  shape = "flexible"
  shape_details {
    maximum_bandwidth_in_mbps = "100"
    minimum_bandwidth_in_mbps = "10"
  }
  subnet_ids = [
    oci_core_subnet.export_lb_public_subnet.id,
  ]
}

resource oci_load_balancer_certificate export_wordpress_lb_certificate_1 {
  ca_certificate   = "-----BEGIN CERTIFICATE-----\nMIIDyTCCArECFGzJTdp1Z3danrF/OGA2VKgnlxRfMA0GCSqGSIb3DQEBCwUAMIGg\nMQswCQYDVQQGEwJLUjEOMAwGA1UECAwFU2VvdWwxFTATBgNVBAcMDERlZmF1bHQg\nQ2l0eTEcMBoGA1UECgwTRGVmYXVsdCBDb21wYW55IEx0ZDEMMAoGA1UECwwDb2Np\nMRgwFgYDVQQDDA90ZXN0Lm9yYWNsZS5jb20xJDAiBgkqhkiG9w0BCQEWFWlsamlu\namFuZzg0QGdtYWlsLmNvbTAeFw0yMjA2MTYwNTAwMTZaFw0yMjA3MTYwNTAwMTZa\nMIGgMQswCQYDVQQGEwJLUjEOMAwGA1UECAwFU2VvdWwxFTATBgNVBAcMDERlZmF1\nbHQgQ2l0eTEcMBoGA1UECgwTRGVmYXVsdCBDb21wYW55IEx0ZDEMMAoGA1UECwwD\nb2NpMRgwFgYDVQQDDA90ZXN0Lm9yYWNsZS5jb20xJDAiBgkqhkiG9w0BCQEWFWls\namluamFuZzg0QGdtYWlsLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC\nggEBAMXxGu0RAMbp05y/V6KdbwMgN9gSH7VArXHvQm/04Q0x0b5WoEs2FQOtHWDk\ni54MwgfE1nPqsR4goTKd0b6OwO3MMYd/2ZIeQsAxmPK/GrYqZhTU9qnznlD9WDnu\ncJwni6yHNEkSDrWAm+cwWqiF94dTQkIVYlKjMXh/GkRgvf0yXcghWvv0g9sBH5WO\ncfVljKOnZ1VS9AtlCUlS2DGIPqvOyArCHGTYboapwYwcZN1wVB5h59gTuGe4fKOC\nxCahZt/c/DGCSDljq2Ftbczleo8sAGhr+yMZBAIJ4hg2jZ1/HUQ7pW4LCtcZZPe4\nH09vzTrn6B4HQlX13/rWJkps9FcCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAjuMA\nQw/7VeR42K63Yx6+C1Y/d2Si6zA0VP/A+ew0pOhaNjQ9gqWIN8YIEzIx5aaw5eI4\nR3yMyQWSjCL0HaLBoVEbP/4PQCaNFncsBpDeN0riD9qEtD8YKCo9FFyu6Q0HXNPp\n9S0FK3EPQtXh4nk5uUvP21Ua2DndVno0BhbTgkFEOjHBSXrw5hcM0pjLkrdfOsz0\noo8C3+s2iSnQda6dw3QOD67C97bRpTqxBEN+cYTRge1YlTkAJW8n4+g+7kw+3/NL\nYvbbnP+bDNxoTENXxEVOxbN6MSWYLKJMll+WUFYLiNyAu3QRatuZyelwdYWIVpL9\npVbwXvE8r8IgHUVhoQ==\n-----END CERTIFICATE-----"
  certificate_name = "cert_ls2"
  load_balancer_id = oci_load_balancer_load_balancer.export_wordpress_lb.id
  #passphrase = <<Optional value not found in discovery>>
  #private_key = <<Optional value not found in discovery>>
  public_certificate = "-----BEGIN CERTIFICATE-----\nMIIDyzCCArMCFAPik+DIxo8tNtOuFGoybXMoy/bZMA0GCSqGSIb3DQEBCwUAMIGg\nMQswCQYDVQQGEwJLUjEOMAwGA1UECAwFU2VvdWwxFTATBgNVBAcMDERlZmF1bHQg\nQ2l0eTEcMBoGA1UECgwTRGVmYXVsdCBDb21wYW55IEx0ZDEMMAoGA1UECwwDb2Np\nMRgwFgYDVQQDDA90ZXN0Lm9yYWNsZS5jb20xJDAiBgkqhkiG9w0BCQEWFWlsamlu\namFuZzg0QGdtYWlsLmNvbTAgFw0yMjA2MTYwNTAyNTVaGA8yMTU5MDUwOTA1MDI1\nNVowgaAxCzAJBgNVBAYTAktSMQ4wDAYDVQQIDAVTZW91bDEVMBMGA1UEBwwMRGVm\nYXVsdCBDaXR5MRwwGgYDVQQKDBNEZWZhdWx0IENvbXBhbnkgTHRkMQwwCgYDVQQL\nDANvY2kxGDAWBgNVBAMMD3Rlc3Qub3JhY2xlLmNvbTEkMCIGCSqGSIb3DQEJARYV\naWxqaW5qYW5nODRAZ21haWwuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIB\nCgKCAQEA6Wc0xSQKBJiS9jx0YSd2NPlzhKWOlXmGfPO+N8RHMjk7lzRcj8zPVtCa\njxxph/oVksypKpOEwoJZ58TO/nHRYDXTgBGWOC593gIj/I2yPMAyzdXif7imLbTk\npieF527Rm04NqXDshTRpvMLPre/jcPpO0vQuDfWKL6d3z3Qg76Bwm2Vu3wNLvZZl\nFCr2KnBExZsdKwsLJaPG2frzt5RsAqoGb/WXBd6Sd7dyfznhWd8UKwbenJfD2Kz5\n215G6Nag93Lxd5aNvUIN2CWakP3PYkGp+1AjoERlDm+YBkyhq4b8pdh4yqkzJDxm\nNnErQSi0DMntXsywaJ/c14Vkji2iMwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQCE\n1Z8c5Ppa8/6n4RNTTTfJoYZnzJBG7AKKD7vBi8JgQXkN6H5WMAwQcFPJEHTo5Hcu\nn3FBq8ukQFbm+wG5DUMmjMAyJHO9+2XIdqOlHapXu0hki6LuUwKmstrL3MJV2RNg\nhdZuBWWsqFF5CeaXXPn8kM9gKnr/U2seOsf3KDSZ7C9GYZH6paX7Qo6LseQkk7R5\nRJg9laQhdI3BGf1mAhPtkFWXVziz3nUu8QpjBgf0beZEL0vaXroRpHrcooCpFnI8\nDRHzs+gRl55A7VX++IKiCp9XZfNfVESc+n8GeeGT3lIK6R2U/MLb7//U0khdBgQu\n+40WvKZtcsqSZP4Iy6BK\n-----END CERTIFICATE-----"
}

resource oci_load_balancer_backend_set export_lb_app01 {
  health_checker {
    interval_ms         = "10000"
    port                = "80"
    protocol            = "HTTP"
    response_body_regex = ".*"
    retries             = "3"
    return_code         = "200"
    timeout_in_millis   = "3000"
    url_path            = "/"
  }
  load_balancer_id = oci_load_balancer_load_balancer.export_wordpress_lb.id
  name             = "lb_app01"
  policy           = "ROUND_ROBIN"
}

resource oci_load_balancer_backend export_10-0-2-222-80 {
  backendset_name  = oci_load_balancer_backend_set.export_lb_app01.name
  backup           = "false"
  drain            = "false"
  ip_address       = "10.0.2.222"
  load_balancer_id = oci_load_balancer_load_balancer.export_wordpress_lb.id
  offline          = "false"
  port             = "80"
  weight           = "1"
}

resource oci_load_balancer_backend export_10-0-2-174-80 {
  backendset_name  = oci_load_balancer_backend_set.export_lb_app01.name
  backup           = "false"
  drain            = "false"
  ip_address       = "10.0.2.174"
  load_balancer_id = oci_load_balancer_load_balancer.export_wordpress_lb.id
  offline          = "false"
  port             = "80"
  weight           = "1"
}

resource oci_load_balancer_backend export_10-0-2-241-80 {
  backendset_name  = oci_load_balancer_backend_set.export_lb_app01.name
  backup           = "false"
  drain            = "false"
  ip_address       = "10.0.2.241"
  load_balancer_id = oci_load_balancer_load_balancer.export_wordpress_lb.id
  offline          = "false"
  port             = "80"
  weight           = "1"
}

resource oci_load_balancer_listener export_wordpress_lb_http-to-https {
  connection_configuration {
    backend_tcp_proxy_protocol_version = "0"
    idle_timeout_in_seconds            = "600"
  }
  default_backend_set_name = oci_load_balancer_backend_set.export_lb_app01.name
  hostname_names = [
  ]
  load_balancer_id = oci_load_balancer_load_balancer.export_wordpress_lb.id
  name             = "http-to-https"
  #path_route_set_name = <<Optional value not found in discovery>>
  port     = "443"
  protocol = "HTTP"
  #routing_policy_name = <<Optional value not found in discovery>>
  rule_set_names = [
  ]
  ssl_configuration {
    certificate_ids = [
    ]
    certificate_name  = oci_load_balancer_certificate.export_wordpress_lb_certificate_1.certificate_name
    cipher_suite_name = "oci-default-ssl-cipher-suite-v1"
    protocols = [
      "TLSv1.2",
    ]
    server_order_preference = "ENABLED"
    trusted_certificate_authority_ids = [
    ]
    verify_depth            = "1"
    verify_peer_certificate = "false"
  }
}

resource oci_load_balancer_listener export_wordpress_lb_http {
  connection_configuration {
    backend_tcp_proxy_protocol_version = "0"
    idle_timeout_in_seconds            = "60"
  }
  default_backend_set_name = oci_load_balancer_backend_set.export_lb_app01.name
  hostname_names = [
  ]
  load_balancer_id = oci_load_balancer_load_balancer.export_wordpress_lb.id
  name             = "http"
  #path_route_set_name = <<Optional value not found in discovery>>
  port     = "80"
  protocol = "HTTP"
  #routing_policy_name = <<Optional value not found in discovery>>
  rule_set_names = [
  ]
}

resource oci_load_balancer_rule_set export_LB_URL_Redirect {
  items {
    action = "REDIRECT"
    #allowed_methods = <<Optional value not found in discovery>>
    #are_invalid_characters_allowed = <<Optional value not found in discovery>>
    conditions {
      attribute_name  = "PATH"
      attribute_value = "/"
      operator        = "PREFIX_MATCH"
    }
    #description = <<Optional value not found in discovery>>
    #header = <<Optional value not found in discovery>>
    #http_large_header_size_in_kb = <<Optional value not found in discovery>>
    #prefix = <<Optional value not found in discovery>>
    redirect_uri {
      host     = "{host}"
      path     = "/{path}"
      port     = "443"
      protocol = "https"
      query    = "?{query}"
    }
    response_code = "301"
    #status_code = <<Optional value not found in discovery>>
    #suffix = <<Optional value not found in discovery>>
    #value = <<Optional value not found in discovery>>
  }
  load_balancer_id = oci_load_balancer_load_balancer.export_wordpress_lb.id
  name             = "LB_URL_Redirect"
}
