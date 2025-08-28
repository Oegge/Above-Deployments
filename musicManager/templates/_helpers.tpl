{{- define "music-stack.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "music-stack.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name (include "music-stack.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "music-stack.labels" -}}
app.kubernetes.io/name: {{ include "music-stack.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
{{- /* Compatibility shims for tests that still reference musicManager.* */ -}}
{{- define "musicManager.name" -}}{{ include "music-stack.name" . }}{{- end -}}
{{- define "musicManager.fullname" -}}{{ include "music-stack.fullname" . }}{{- end -}}
{{- define "musicManager.labels" -}}{{ include "music-stack.labels" . }}{{- end -}}
