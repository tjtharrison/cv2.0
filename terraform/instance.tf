
resource "aws_instance" "tjth_cv" {
  ami                    = local.instance_ami
  availability_zone      = local.availability_zone
  instance_type          = local.instance_type
  vpc_security_group_ids = [aws_security_group.tjth_cv.id]
  tags = {
    Name = local.project_name
  }
  key_name = "hvm-access"

  iam_instance_profile = aws_iam_instance_profile.ec2_s3_profile.name

  user_data = <<EOF
    #!/bin/bash
    sudo apt update
    sudo apt install python3 python3-pip awscli apt-transport-https ca-certificates curl software-properties-common -y
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io -y
    sudo curl -O /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.28.5/docker-compose-Linux-x86_64
    sudo chmod +x /usr/local/bin/docker-compose

    aws s3 cp s3://${local.artifacts_bucket}/cv/docker-compose.yaml docker-compose.yaml
    docker-compose up -d --build
    EOF   
}