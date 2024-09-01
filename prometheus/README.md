# Prometheus

## 新たなnode exporterの監視対象を追加したい場合

1. `grafana-prometheus/prometheus/prometheus.yaml`の`targets`に追記

2. `docker restart prometheus`を実行
