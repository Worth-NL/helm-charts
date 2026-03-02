# notifynl-omc-nodep

![Version: 0.10.0](https://img.shields.io/badge/Version-0.10.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.17.18](https://img.shields.io/badge/AppVersion-1.17.18-informational?style=flat-square)

Chart to deploy the NotifyNL OMC application.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Pier-Angelo Gaetani | <pgaetani@worth.systems> |  |

## Requirements

Kubernetes: `>=1.26.6`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| app.extraEnvConfigMaps | list | `[]` | List of k8s configMap resource names to be loaded as additional environment variables in deployment |
| app.extraEnvSecrets | list | `[]` | List of k8s secret resource names to be loaded as additional environment variables in deployment |
| app.podLabels | object | `{}` |  |
| app.port | int | `5270` |  |
| app.resources.limits.cpu | string | `"500m"` |  |
| app.resources.limits.memory | string | `"512Mi"` |  |
| app.resources.requests.cpu | string | `"250m"` |  |
| app.resources.requests.memory | string | `"128Mi"` |  |
| fullnameOverride | string | `nil` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"docker.io/worthnl/notifynl-omc"` |  |
| image.tag | string | `nil` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hostname | string | `nil` |  |
| ingress.ingressClass | string | `nil` |  |
| ingress.tls.enabled | bool | `false` |  |
| ingress.tls.secret | string | `nil` |  |
| nameOverride | string | `nil` |  |
| settings.aspnetcore.environment | string | `"Production"` | Defines in which mode (environment) the OMC application is running |
| settings.brp.baseUrl | string | `nil` | Base URL of the BRP (Haal Centraal) API gateway |
| settings.brp.clientCert.pem.path | string | `""` | Absolute path to the PEM-encoded client certificate used for mutual TLS (mTLS) authentication |
| settings.brp.clientKey.pem.path | string | `""` | Absolute path to the PEM-encoded private key corresponding to the BRP client certificate |
| settings.keycloak.authServerUrl | string | `nil` | Base URL of the Keycloak authorization server used to obtain access tokens for BRP |
| settings.keycloak.clientId | string | `""` | Client identifier registered in Keycloak for OMC BRP access |
| settings.keycloak.clientSecret | string | `""` | Client secret used for OAuth2 token exchange with Keycloak |
| settings.keycloak.tokenExchangeAudience | string | `""` | Audience value used during OAuth2 token exchange. Must match the audience expected by the BRP (Haal Centraal) API |
| settings.kto.auth.jwt.clientId | string | `""` | The client identifier used for authentication with the KTO service |
| settings.kto.auth.jwt.issuer | string | `""` | The URL of the authentication provider issuing JWT tokens |
| settings.kto.auth.jwt.scope | string | `""` | Defines the scope of permissions for the generated JWT token |
| settings.kto.auth.jwt.secret | string | `""` | The secret key used for signing JWT tokens for authentication |
| settings.kto.caseTypeSettings | string | `nil` |  |
| settings.kto.url | string | `nil` | The API endpoint for submitting case data to KTO |
| settings.notify.api.baseUrl | string | `"https://api.notifynl.nl"` |  |
| settings.notify.api.key | string | `nil` |  |
| settings.notify.templateId.decisionMade | string | `nil` | Should be generated per specific business use case from "Notify NL" Admin Portal |
| settings.notify.templateId.email.messageReceived | string | `nil` | Should be generated per specific business use case from "Notify NL" Admin Portal |
| settings.notify.templateId.email.taskAssigned | string | `nil` | Should be generated per specific business use case from "Notify NL" Admin Portal |
| settings.notify.templateId.email.zaakClose | string | `nil` | Should be generated per specific business use case from "Notify NL" Admin Portal |
| settings.notify.templateId.email.zaakCreate | string | `nil` | Should be generated per specific business use case from "Notify NL" Admin Portal |
| settings.notify.templateId.email.zaakUpdate | string | `nil` | Should be generated per specific business use case from "Notify NL" Admin Portal |
| settings.notify.templateId.sms.<<.messageReceived | string | `nil` | Should be generated per specific business use case from "Notify NL" Admin Portal |
| settings.notify.templateId.sms.<<.taskAssigned | string | `nil` | Should be generated per specific business use case from "Notify NL" Admin Portal |
| settings.notify.templateId.sms.<<.zaakClose | string | `nil` | Should be generated per specific business use case from "Notify NL" Admin Portal |
| settings.notify.templateId.sms.<<.zaakCreate | string | `nil` | Should be generated per specific business use case from "Notify NL" Admin Portal |
| settings.notify.templateId.sms.<<.zaakUpdate | string | `nil` | Should be generated per specific business use case from "Notify NL" Admin Portal |
| settings.omc.actor.id | string | `nil` |  |
| settings.omc.auth.jwt.audience | string | `nil` |  |
| settings.omc.auth.jwt.expiresInMin | int | `60` | The OMC JWT tokens are generated by OMC and authorized by Open services. New JWT token has to be generated manually |
| settings.omc.auth.jwt.issuer | string | `nil` | Something identifying Notify NL (OMC Web API) service (it will be used internally) - The OMC is the issuer |
| settings.omc.auth.jwt.secret | string | `nil` | For security reasons it should be at least 64 bytes long |
| settings.omc.auth.jwt.userId | string | `nil` | The OMC JWT tokens are generated by OMC and authorized by Open services. New JWT token has to be generated manually |
| settings.omc.auth.jwt.userName | string | `nil` | The OMC JWT tokens are generated by OMC and authorized by Open services. New JWT token has to be generated manually |
| settings.omc.context.path | string | `""` |  |
| settings.omc.feature.workflow.version | int | `2` |  |
| settings.sentry.dsn | string | `"https://5cfe508231898da382bc22bc2c164488@o4507152178741248.ingest.de.sentry.io/4507152246112336"` | It points out to the Sentry project configured to store captured events from the app (messages, exceptions) |
| settings.sentry.environment | string | `nil` | It's the identifier used by Sentry external logging system to distinguish instance and mode of the application (it can contains name of the company, or specific environment: prod, acc, dev, test...) |
| settings.zgw.auth.jwt.expiresInMin | int | `60` | This JWT token will be generated from secret, and other JWT claims, configured from UI of OpenZaak Web API service. Identical details (secret, iss, aud, exp, etc) as in Open services needs to be used here |
| settings.zgw.auth.jwt.issuer | string | `nil` | Something identifying "OpenZaak" / "OpenKlant" / "OpenNotificatie" Web API services (token is shared between of them) |
| settings.zgw.auth.jwt.secret | string | `nil` | Internal implementation of Open services is regulating this, however it's better to use something longer as well |
| settings.zgw.auth.jwt.userId | string | `nil` | This JWT token will be generated from secret, and other JWT claims, configured from UI of OpenZaak Web API service. Identical details (secret, iss, aud, exp, etc) as in Open services needs to be used here |
| settings.zgw.auth.jwt.userName | string | `nil` | This JWT token will be generated from secret, and other JWT claims, configured from UI of OpenZaak Web API service. Identical details (secret, iss, aud, exp, etc) as in Open services needs to be used here |
| settings.zgw.auth.key.objectTypen | string | `nil` | It needs to be generated from "ObjectTypen" Web API service UI |
| settings.zgw.auth.key.objecten | string | `nil` | It needs to be generated from "Objecten" Web API service UI |
| settings.zgw.auth.key.openklant | string | `nil` | It needs to be generated for OMC Workflow v2 and above from "OpenKlant" 2.0 Web API service UI |
| settings.zgw.endpoint.besluiten | string | `nil` | You have to use the domain part from URLs where you are hosting the dedicated Open services, without slash at the end |
| settings.zgw.endpoint.contactMomenten | string | `nil` | You have to use the domain part from URLs where you are hosting the dedicated Open services, without slash at the end |
| settings.zgw.endpoint.objectTypen | string | `nil` | You have to use the domain part from URLs where you are hosting the dedicated Open services, without slash at the end |
| settings.zgw.endpoint.objecten | string | `nil` | You have to use the domain part from URLs where you are hosting the dedicated Open services, without slash at the end |
| settings.zgw.endpoint.openKlant | string | `nil` | You have to use the domain part from URLs where you are hosting the dedicated Open services, without slash at the end |
| settings.zgw.endpoint.openNotificaties | string | `nil` | You have to use the domain part from URLs where you are hosting the dedicated Open services, without slash at the end |
| settings.zgw.endpoint.openZaak | string | `nil` | You have to use the domain part from URLs where you are hosting the dedicated Open services, without slash at the end |
| settings.zgw.variable.objectType.decisionInfoObjectType.uuids | string | `nil` | Is provided by the user based on "informatieobjecttype" from "informatieobject" retrieved from "OpenZaak" Web API service when querying "besluiten" |
| settings.zgw.variable.objectType.ktoObjectType.uuids | string | `nil` |  |
| settings.zgw.variable.objectType.messageObjectType.uuid | string | `nil` | Is provided by the user based on "objectType" from "kenmerken" from the initial notification received from "Notificaties" Web API service |
| settings.zgw.variable.objectType.messageObjectType.version | int | `1` | It can be taken from "version" value set in "ObjectTypen" Web API service |
| settings.zgw.variable.objectType.taskObjectType.uuid | string | `nil` | Is provided by the user based on "objectType" from "kenmerken" from the initial notification received from "Notificaties" Web API service |
| settings.zgw.whitelist.decisionMade.ids | string | `"*"` | Is provided by the user based on "Identificatie" property of case type retrieved from case URI ("zaak") from "OpenZaak" Web API service |
| settings.zgw.whitelist.message.allowed | bool | `true` | Is provided by the user |
| settings.zgw.whitelist.taskAssigned.ids | string | `"*"` | Is provided by the user based on "Identificatie" property of case type retrieved from case URI ("zaak") from "OpenZaak" Web API service |
| settings.zgw.whitelist.zaakClose.ids | string | `"*"` | Is provided by the user based on "Identificatie" property of case type retrieved from case URI ("zaak") from "OpenZaak" Web API service |
| settings.zgw.whitelist.zaakCreate.ids | string | `"*"` | Is provided by the user based on "Identificatie" property of case type retrieved from case URI ("zaak") from "OpenZaak" Web API service |
| settings.zgw.whitelist.zaakUpdate.ids | string | `"*"` | Is provided by the user based on "Identificatie" property of case type retrieved from case URI ("zaak") from "OpenZaak" Web API service |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
