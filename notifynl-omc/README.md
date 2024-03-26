# notifynl-omc

![Version: 0.2.7-beta](https://img.shields.io/badge/Version-0.2.7--beta-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.6.4](https://img.shields.io/badge/AppVersion-1.6.4-informational?style=flat-square)

Chart to deploy the NotifyNL OMC application.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Pier-Angelo Gaetani | <pgaetani@worth.systems> |  |
| Thomas M. Krystyan | <tkrystyan@worth.systems> |  |

## Requirements

Kubernetes: `>=1.26.6`

| Repository | Name | Version |
|------------|------|---------|
| https://gemeente-denhaag.github.io/helm-charts/ | dh-lib | 0.1.5 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| appKind | string | `"Deployment"` |  |
| automountServiceAccountToken | bool | `false` |  |
| autoscaling.enabled | bool | `false` |  |
| command[0] | string | `"dotnet"` |  |
| command[1] | string | `"NotifyNL.EventsHandler.dll"` |  |
| commonAnnotations | object | `{}` |  |
| commonLabels | object | `{}` |  |
| containerPorts[0].containerPort | int | `5270` |  |
| containerPorts[0].name | string | `"http"` |  |
| containerPorts[0].protocol | string | `"TCP"` |  |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| containerSecurityContext.enabled | bool | `true` |  |
| containerSecurityContext.readOnlyRootFilesystem | bool | `true` |  |
| dnsPolicy | string | `"ClusterFirst"` |  |
| envFrom | list | `[]` |  |
| env[0].name | string | `"ASPNETCORE_ENVIRONMENT"` |  |
| env[0].value | string | `"Development"` |  |
| env[1].name | string | `"ASPNETCORE_URLS"` |  |
| env[1].value | string | `"http://*:5270"` |  |
| hostAliases | list | `[]` |  |
| hostNetwork | bool | `false` |  |
| image.fullImage | list | `[]` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"worthnl/notifynl-omc"` |  |
| image.tag | string | `"1.6.4"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/use-regex" | string | `"true"` |  |
| ingress.apiVersion | string | `nil` |  |
| ingress.certManager | bool | `false` |  |
| ingress.enabled | bool | `false` |  |
| ingress.extraPaths | list | `[]` |  |
| ingress.hostname | string | `""` |  |
| ingress.ingressClassName | string | `"nginx"` |  |
| ingress.nginx.configurationSnippet | string | `nil` |  |
| ingress.nginx.serverSnippet | string | `nil` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"Prefix"` |  |
| ingress.tls | bool | `true` |  |
| initContainers | list | `[]` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.failureThreshold | int | `2` |  |
| livenessProbe.initialDelaySeconds | int | `30` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.tcpSocket.port | int | `5270` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| name | string | `"notifynl-omc"` |  |
| nodeAffinityPreset.key | string | `""` |  |
| nodeAffinityPreset.type | string | `nil` |  |
| nodeAffinityPreset.values | list | `[]` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.enabled | bool | `false` |  |
| persistence.mountPath | string | `"/data"` |  |
| persistence.size | string | `"1Gi"` |  |
| podAffinityPreset | string | `nil` |  |
| podAnnotations | object | `{}` |  |
| podAntiAffinityPreset | string | `nil` |  |
| podDisruptionBudget.enabled | bool | `false` |  |
| podLabels.public-access | string | `"allow"` |  |
| podSecurityContext.enabled | bool | `true` |  |
| podSecurityContext.fsGroup | int | `1000` |  |
| podSecurityContext.runAsGroup | int | `1000` |  |
| podSecurityContext.runAsNonRoot | bool | `true` |  |
| podSecurityContext.runAsUser | int | `1000` |  |
| priorityClassName | string | `""` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.failureThreshold | int | `6` |  |
| readinessProbe.initialDelaySeconds | int | `60` |  |
| readinessProbe.periodSeconds | int | `30` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.tcpSocket.port | int | `5270` |  |
| readinessProbe.timeoutSeconds | int | `5` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"500m"` |  |
| resources.limits.memory | string | `"512Mi"` |  |
| resources.requests.cpu | string | `"250m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| service.port | int | `5270` |  |
| service.targetPort | int | `5270` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automountServiceAccountToken | bool | `true` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `nil` |  |
| startupProbe.enabled | bool | `true` |  |
| startupProbe.failureThreshold | int | `15` |  |
| startupProbe.initialDelaySeconds | int | `10` |  |
| startupProbe.periodSeconds | int | `20` |  |
| startupProbe.successThreshold | int | `1` |  |
| startupProbe.tcpSocket.port | int | `5270` |  |
| startupProbe.timeoutSeconds | int | `5` |  |
| tolerations | list | `[]` |  |
| topologySpreadConstraints | list | `[]` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.0](https://github.com/norwoodj/helm-docs/releases/v1.13.0)
