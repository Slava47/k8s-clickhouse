{{/*
Генерация ConfigMap для пользователей
*/}}
{{- define "clickhouse.usersConfig" -}}
<yandex>
  <users>
    {{- range .Values.users }}
    <{{ .name }}>
      <password>{{ .password }}</password>
      <profile>default</profile>
      <quota>default</quota>
      <networks>
        {{- range .networks }}
        <ip>{{ . }}</ip>
        {{- end }}
      </networks>
    </{{ .name }}>
    {{- end }}
  </users>
</yandex>
{{- end -}}
