output "instance_public_ip" {
    description = "Public IP Address of the instance"
    value = aws_instance.tjth_cv.public_ip
}