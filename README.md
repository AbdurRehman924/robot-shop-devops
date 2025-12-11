# Robot Shop DevOps - Phase 1

## Infrastructure Provisioning

This project provisions a complete DigitalOcean Kubernetes infrastructure using Terraform.

### Prerequisites

- Terraform installed
- DigitalOcean API token
- kubectl installed

### Quick Start

1. **Setup credentials:**
   ```bash
   cp terraform/terraform.tfvars.example terraform/terraform.tfvars
   # Edit terraform.tfvars with your DO token
   ```

2. **Deploy infrastructure:**
   ```bash
   ./scripts/deploy.sh
   ```

3. **Configure kubectl:**
   ```bash
   export KUBECONFIG=terraform/kubeconfig
   kubectl get nodes
   ```

### What's Provisioned

- **DOKS Cluster**: 2 nodes, 2GB each
- **Container Registry**: Basic tier
- **Load Balancer**: HTTP/HTTPS forwarding
- **Kubeconfig**: Auto-configured

### Project Structure

```
terraform/
├── main.tf              # Root configuration
├── variables.tf         # Input variables
├── outputs.tf          # Output values
└── modules/
    ├── doks/           # Kubernetes cluster
    ├── registry/       # Container registry
    └── loadbalancer/   # Load balancer
```

### Testing

```bash
# Test cluster connectivity
kubectl get nodes

# View cluster info
kubectl cluster-info
```
