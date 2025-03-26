Terraform Project Structure for Multiple Environments & Cloud Providers
```bash
terraform-project/
├── modules/
│   ├── aws-ec2/
│   └── gcp-vm/
├── envs/
│   ├── dev/
│   │   └── main.tf
│   ├── staging/
│   │   └── main.tf
│   └── prod/
│       └── main.tf
├── backend.tf
├── provider.tf
└── variables.tf

```

- `modules/`: Reusable code blocks per cloud provider (AWS, GCP, etc.)
- `envs/`: Environment-specific configurations (dev, staging, prod)
- Use `backend.tf` for remote state (e.g., S3 + DynamoDB)
- Each `main.tf` in envs uses appropriate modules and provider configs

