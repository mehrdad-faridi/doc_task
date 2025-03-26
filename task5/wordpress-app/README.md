Directory structure:
```bash
task5/wordpress-app
├── Chart.yaml
├── README.md
├── charts
├── templates
│   ├── _helpers.tpl
│   ├── configmap.yaml
│   ├── deployment.yaml
│   ├── ingress.yaml
│   ├── secret.yaml
│   └── service.yaml
└── values.yaml
```


Some useful command helm command:
```bash
# Validate the chart
helm lint ./wordpress-app

# Test with dry-run
helm install wordpress-app ./wordpress-app --dry-run --debug

# Clean up:
helm uninstall wordpress-app
```

