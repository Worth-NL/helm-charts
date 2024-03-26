# NotifyNL Helm Charts

[![Artifact Hub](https://img.shields.io/endpoint?style=for-the-badge&url=https://artifacthub.io/badge/repository/notifynl)](https://artifacthub.io/packages/search?repo=notifynl)
![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/worth-nl/helm-charts/release.yaml?style=for-the-badge)
![GitHub License](https://img.shields.io/github/license/worth-nl/helm-charts?style=for-the-badge)

## TL;DR

```
helm repo add notifynl https://worth-nl.github.io/helm-charts
```

## Charts

### [OMC](notifynl-omc/)

- [Documentation](https://github.com/Worth-NL/NotifyNL-OMC/blob/main/Documentation/OMC%20-%20Documentation.md)

⚠️ Some environment variables are required for a valid configuration, see above documentation for information on these variables.

⚠️ The following environment variables are also _always_ required:

```
  - name: ASPNETCORE_ENVIRONMENT
    value: "Production"
  - name: ASPNETCORE_URLS
    value: "http://*:5270"
  - name: COMPlus_EnableDiagnostics
    value: "0"
```

```
helm install omc notifynl/notifynl-omc -f my.values.yaml
```
