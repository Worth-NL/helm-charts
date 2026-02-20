{{/* Define match labels */}}
{{- define "labels.match" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/* Define extra labels */}}
{{- define "labels.extras" -}}
app.kubernetes.io/version: {{ default .Chart.AppVersion .Values.app.overrides.tag | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/* Define full labels */}}
{{- define "labels.full" -}}
{{- include "labels.match" . }}
{{ include "labels.extras" . }}
{{- end -}}