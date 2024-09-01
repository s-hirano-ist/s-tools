# Grafana

## setups

1. `docker compose up --build -d`を実行

2. `http://<HOSTNAME>:3001`にアクセス

3. 初期ユーザ名: `grafana`、パスワード: `grafana`を入力

4. パスワード・ユーザ名を変更

5. Home→Administration→Data SourceからAdd new data sourceでPrometheusを追加

6. `Prometheus server URL`に`http://prometheus:9090`を入力し、他はデフォルトのまま、`Save & test`をクリックし、エラーを吐かないことを確認

7. Home→DashboardsからNewでDashboardをimportする（`import`をクリック）

8. `Import via grafana.com`に、`1860`を入力する。
   - `1860`は[Node exporterのテンプレート](https://grafana.com/grafana/dashboards/1860-node-exporter-full/)のID

9. `Import via grafana.com`の右にある`Load`ボタンをクリック

10. `Dashboard`一覧にデータが追加されていることを確認

## alerts

TODO:
