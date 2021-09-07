{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "sonarqube.name" -}}
{{- default .Chart.Name | trunc 63 -}}
{{- end -}}

{{- define "sonarqube.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "sonarqube.labels" -}}
app.kubernetes.io/name: {{ include "sonarqube.name" . }}
helm.sh/chart: {{ include "sonarqube.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "sonarqube.matchLabels" -}}
app.kubernetes.io/name: {{ include "sonarqube.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
