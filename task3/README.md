#### 🔍 1. Choose a Monitoring Stack
I'd go for an open-source + scalable stack. Here’s a solid combo:

**Metrics**: Prometheus + Node Exporter
**Visualization**: Grafana
**Logs**: Loki (Grafana’s logging solution) and Promtail
**Alerts**: Alertmanager (Prometheus) + Slack/Email integrations
**Thanos stack**: to make Prometheus stateless and have long-term metrics storage integrated with S3/GCS


#### How to deploy and monitor them:
> Prometheus Operator: for Prometheus, Grafana, exporter, and Alertmanager deployment
Loki-stack offical helm chart: separate Loki read and write deployemnt and promtail for logging system.
Thanos stack: deploy via official helm chart. (for auditing, scalability and cost)
each tool has its own k8s object type, but for promtail and exporter it will use DaemonSet.

> on k8s we can use service discovery, so any new service will be automatically added to our logging and monitoring.

> if we need to monitor services outside of K8s cluster then we need to deploy Promtail and exporter agent in our instances.

</br></br>
##### Other conisderation:
- It's better to have a separate installation Observability stack in a different staging (staging, production) environment. It will give you the ability to do updates, upgrades, and have a mirror environment for adding and testing new features in the monitoring system without affecting the production stack.
- integration with GitLab or GitHub for SSO
- its possible to have Terraform/ArgoCD for installtion.
- have separate node group and taint.
