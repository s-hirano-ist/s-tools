# Template of NginX

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

### SSL

If SSL files are encrypted, the following matters must be done.

- https://nginx.org/en/docs/http/ngx_http_ssl_module.html#ssl_password_file
-https://qiita.com/nnsnodnb/items/361deccadb0878fd34ea

### `proxy_pass`の注意点

```bash
# 1. specified with a URI
location /name/ {
    proxy_pass http://127.0.0.1/;
}
# http://example.com/name/fooはhttp://127.0.0.1/fooに転送

# 2. specified without a URI
location /name/ {
    proxy_pass http://127.0.0.1;
}
# http://example.com/name/fooはhttp://127.0.0.1/name/fooに転送
```

> https://www.xmisao.com/2014/05/09/nginx-proxy-pass.html

### 脆弱性対策

「locationで指定したURLの末尾にスラッシュを入れない」かつ「aliasで指定したパスの末尾にスラッシュを入れる」で脆弱性あり。

> https://gigazine.net/news/20230708-nginx-alias-traversal/

### HTTP/3 対応

> https://zenn.dev/catatsuy/articles/71609eff5611e4
