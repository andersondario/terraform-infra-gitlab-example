# Terraform Pipeline Example

Example of GitLab CI pipelines for Terraform and GCP, with multi-environment support (dev, stage, prod) and reusable modules.

Check my Medium article: [Creating pipelines using Gitlab CI for Terraform and GCP](https://medium.com/@andersondario/creating-pipelines-using-gitlab-ci-for-terraform-and-gcp-ecb4c8f58e66)

## Structure

```
.
├── infra/
│   ├── dev/        # Development environment
│   ├── stage/      # Staging environment
│   └── prod/       # Production environment
├── modules/
│   └── gcp/        # Reusable GCP modules
│       └── firewall-rule/
└── .gitlab-ci.yml
```

## License

MIT
