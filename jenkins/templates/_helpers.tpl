{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "jenkins.name" -}}
{{- default .Chart.Name | trunc 63 -}}
{{- end -}}

{{- define "jenkins.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "jenkins.labels" -}}
app.kubernetes.io/name: {{ include "jenkins.name" . }}
helm.sh/chart: {{ include "jenkins.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "jenkins.matchLabels" -}}
app.kubernetes.io/name: {{ include "jenkins.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
