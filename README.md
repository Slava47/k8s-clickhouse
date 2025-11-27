# ClickHouse Deployment in Kubernetes

Простое автоматическое разворачивание ClickHouse в Kubernetes.

## Особенности

- Single-инсталляция ClickHouse
- Поддержка указания версии ClickHouse
- Конфигурируемые пользователи и пароли
- Постоянное хранилище данных
- Health checks
- Параметризация через Helm values

## Требования

- Kubernetes
- Helm

## Запуск решения

1. Создайте папку и поместите в нее все файлы с этого репозитория, сохраняя структуру.

2. Установите
```bash
helm install clickhouse . -n clickhouse --create-namespace
