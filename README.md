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
