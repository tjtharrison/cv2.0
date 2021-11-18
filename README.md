# cv2.0

Version 2 of TJTH CV

# Local development

To run the CV locally via docker-compose, run the following to launch, the CV will then be available at http://localhost:8001

```
docker-compose -f docker-compose.dev.yaml up -d
```

# Terraform deployment

It is required to have the below environment variables configured for Cloudflare (As appropriate, to be collected from the Cloudflare console):

```
TF_VAR_cloudflare_api_token
TF_VAR_cloudflare_zone_id
```