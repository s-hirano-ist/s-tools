# nginx

Reverse proxy server for web contents.

## Usage

start

```bash
docker-compose up --build -d
```

change settings

```bash
vim conf.d/default.conf
docker restart rproxy
```

auto renual ssl

```bash
crontab -e
```

```txt
0 0 1 * * /root/s-tools/nginx/certbot_renew.sh
```
