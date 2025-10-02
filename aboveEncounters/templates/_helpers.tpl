{{- define "encounter-stack.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "encounter-stack.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name (include "encounter-stack.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "encounter-stack.labels" -}}
app.kubernetes.io/name: {{ include "encounter-stack.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
{{- /* Compatibility shims for tests that still reference musicManager.* */ -}}
{{- define "musicManager.name" -}}{{ include "encounter-stack.name" . }}{{- end -}}
{{- define "musicManager.fullname" -}}{{ include "encounter-stack.fullname" . }}{{- end -}}
{{- define "musicManager.labels" -}}{{ include "encounter-stack.labels" . }}{{- end -}}
