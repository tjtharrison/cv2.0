# IAM Role
resource "aws_iam_role" "ec2_s3_access_role" {
  name = "tjth_cv_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Effect = "Allow"
      }
    ]
  })
}

## IAM Policy
resource "aws_iam_policy" "ec2_s3_access_policy" {
  name        = "ec2-s3-access"
  description = "Policy to allow ec2 access to s3"
  policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Action" : [
            "s3:GetObject",
            "s3:HeadObject"
          ],
          "Resource" : [
            "arn:aws:s3:::${local.artifacts_bucket}",
            "arn:aws:s3:::${local.artifacts_bucket}/*"
          ]
        }
      ]
  })
}

## Attach IAM Policy to IAM role
resource "aws_iam_policy_attachment" "ec2_s3_attach_policy" {
  name       = "ec2_s3_attach_policy"
  roles      = ["${aws_iam_role.ec2_s3_access_role.name}"]
  policy_arn = aws_iam_policy.ec2_s3_access_policy.arn
}

## IAM Instance Profile
resource "aws_iam_instance_profile" "ec2_s3_profile" {
  name = "ec2_s3_profile_tjth_cv"
  role = aws_iam_role.ec2_s3_access_role.name
}
