# Reverse Proxy

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

## Reference

- https://hub.docker.com/_/nginx
- https://nginx.org/en/
- https://www.nginx.co.jp

## Notes

If SSL files are encrypted, the following matters must be done.

- https://nginx.org/en/docs/http/ngx_http_ssl_module.html#ssl_password_file
-https://qiita.com/nnsnodnb/items/361deccadb0878fd34ea
