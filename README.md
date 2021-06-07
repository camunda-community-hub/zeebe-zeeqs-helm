# ZeeQS Helm Chart

This functionality is in beta and is subject to change. The design and code is less mature than official GA features and is being provided as-is with no warranties. Beta features are not subject to the support SLA of official GA features.

[The original chart was created by an awesome community member (pocorschi), here you can find the original repo](https://github.com/pocorschi/zeeqs-helm).

## Requirements

- [Helm](https://helm.sh/) >= 3.0 +
- Kubernetes >= 1.8
- Minimum cluster requirements include the following to run this chart with default settings. All of these settings are configurable.
  - Three Kubernetes nodes to respect the default "hard" affinity settings
  - 1GB of RAM for the JVM heap

## Usage notes and getting started

## Installing

- Add the official zeebe helm charts repo
  ```
  helm repo add zeebe https://helm.camunda.io
  ```
- Install it

  ```
  helm install --name zeeqs zeebe/zeeqs
  ```

## Configuration

| Parameter           | Description                                                     | Default        |
| ------------------- | --------------------------------------------------------------- | -------------- |
| `global.hazelcast`  | Hazelcast Cluster to connect ZeeQS to                           | inactive       |
| `global.port`       | The port that the deployment is running on                      | 9000           |
| `global.replicas`   | How many replicas                                               | 1              |
| `service.type`      | What type of service to use (ClusterIP, LoadBalancer, NodePort) | ClusterIP      |
| `service.port`      | The port exposed by the service                                 | 9000           |
| `hazelcast.enabled` | Set this to false if you want to provide your own hazelcast     | true           |
|                     | connection                                                      |                |
| ------------------  | --------------------------------------------------------------- | -------------- |
