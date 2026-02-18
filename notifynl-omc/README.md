# notifynl-omc

![Version: 0.4.30](https://img.shields.io/badge/Version-0.4.30-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.17.18](https://img.shields.io/badge/AppVersion-1.17.18-informational?style=flat-square)

Chart to deploy the NotifyNL OMC application.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Pier-Angelo Gaetani | <pgaetani@worth.systems> |  |
| Thomas J. Eelvelt | <teelvelt@worth.systems> |  |

## Requirements

Kubernetes: `>=1.26.6`

| Repository | Name | Version |
|------------|------|---------|
| https://gemeente-denhaag.github.io/helm-charts/ | dh-lib | 0.1.11 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| appKind | string | `"Deployment"` |  |
| automountServiceAccountToken | bool | `false` |  |
| autoscaling.enabled | bool | `false` |  |
| command[0] | string | `"dotnet"` |  |
| command[1] | string | `"OMC.EventsHandler.dll"` |  |
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
| env[0].value | string | `"Production"` |  |
| env[1].name | string | `"ASPNETCORE_URLS"` |  |
| env[1].value | string | `"http://*:5270"` |  |
| env[2].name | string | `"COMPlus_EnableDiagnostics"` |  |
| env[2].value | string | `"0"` |  |
| extraIngress.annotations | object | map[] | Ingress annotations done as key:value pairs.<br> For a full list of possible ingress annotations, please see<br> If certManager is set to true, annotation kubernetes.io/tls-acme: "true" will automatically be set.<br> ref: <a href="https://github.com/kubernetes/ingress-nginx/blob/master/docs/user-guide/nginx-configuration/annotations.md">[link]</a> |
| extraIngress.apiVersion | string | `""` | Override API Version (automatically detected if not set). |
| extraIngress.certManager | bool | `false` | Set this to true in order to add the corresponding annotations for cert-manager. |
| extraIngress.enabled | bool | `false` | Configure a second ingress resource that allows you to access the app installation.<br> Set to true to enable ingress.<br> ref: <a href="https://kubernetes.io/docs/user-guide/ingress/">[link]</a> |
| extraIngress.existingTlsSecret | string | `nil` | Specify a tls secret which already exists. tls must be set to true. |
| extraIngress.extraHosts | list | [] | The list of additional hostnames to be covered with this ingress record.<br>
Most likely the hostname above will be enough, but in the event more hosts are needed, this is an array.

<details>
<summary>+Expand</summary>

```yaml
extraHosts:
- name: app.local
  path: /
```
</details> |
| extraIngress.extraPaths | list | [] | Any additional arbitrary paths that may need to be added to the ingress under the main host.
For example: The ALB ingress controller requires a special rule for handling SSL redirection.

<details>
<summary>+Expand</summary>

```yaml
extraPaths:
- path: /api/*
  pathType: Prefix
  backend:
    service:
      name: '{{ include "common.names.fullname" . }}'
      port:
        name: app
```
</details> |
| extraIngress.extraTls | list | [] | The tls configuration for additional hostnames to be covered with this ingress record.<br>

<details>
<summary>+Expand</summary>

```yaml
extraTls:
- hosts:
    - app.local
  secretName: app.local-tls
```
</details>
ref: <a href="https://kubernetes.io/docs/concepts/services-networking/ingress/#tls">[link]</a> |
| extraIngress.hostname | string | `""` | When the ingress is enabled, a host pointing to this will be created. |
| extraIngress.ingressClassName | string | `""` | Set the ingressclassname |
| extraIngress.nameSuffix | string | `""` | Set the nameSuffix to extend the extraIngress name {{ include "common.names.fullname" . }}

<details>
<summary>+Expand</summary>

```yaml
extraIngress:
  enabled: true
  nameSuffix: "-ext"
```
</details> |
| extraIngress.path | string | `"/"` | The Path for the ingress controller. |
| extraIngress.pathType | string | `"ImplementationSpecific"` | Ingress Path type. |
| extraIngress.tls | bool | `false` | Enable TLS configuration for the hostname defined at ingress.hostname parameter.<br> TLS certificates will be retrieved from a TLS secret with name: {{- printf "%s-tls" .Values.ingress.hostname }}<br> You can use the ingress.secrets parameter to create this TLS secret or relay on cert-manager to create it. |
| hostAliases | list | `[]` |  |
| hostNetwork | bool | `false` |  |
| image.fullImage | list | `[]` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"worthnl/notifynl-omc"` |  |
| image.tag | string | `"1.17.18"` |  |
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
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
