{{/* Full name for resources */}}
{{- define "deployedfrontend.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/* Short name of the chart */}}
{{- define "deployedfrontend.name" -}}
{{- .Chart.Name -}}
{{- end }}

{{/* Common labels */}}
{{- define "deployedfrontend.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "deployedfrontend.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/* Service account */}}
{{- define "deployedfrontend.serviceAccountName" -}}
{{ default (printf "%s-sa" .Release.Name) .Values.serviceAccount.name }}
{{- end }}
