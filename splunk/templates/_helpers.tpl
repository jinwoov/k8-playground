{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "splunk.name" -}}
{{- default .Chart.Name | trunc 63 -}}
{{- end -}}

{{- define "splunk.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "splunk.labels" -}}
app.kubernetes.io/name: {{ include "splunk.name" . }}
helm.sh/chart: {{ include "splunk.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "splunk.matchLabels" -}}
app.kubernetes.io/name: {{ include "splunk.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
