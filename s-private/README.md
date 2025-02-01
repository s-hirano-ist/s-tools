# s-private deploy environment

## Start server

```bash
docker compose --profile prod up --build -d --pull always
```

## Migration

```bash
docker compose run --rm migrate
```
