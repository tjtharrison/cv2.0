resource "aws_security_group" "tjth_cv" {
    name = "tjth_cv"
    description = "tjth_cv"
    
    ingress {
        description = "SSH from TJTH Home"
        from_port = "22"
        to_port = "22"
        protocol = "TCP"
        cidr_blocks = [local.tjth_cidr]
    }

    ingress {
        description = "HTTP from everywhere"
        from_port = local.app_http_port
        to_port = local.app_http_port
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = local.project_name
    }
}
