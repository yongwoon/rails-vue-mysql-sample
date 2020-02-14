# GETTING START

## 初回のみ

- Docker build

```bash
docker-compose build --no-cache
```

- Run docker-compose

```bash
docker-compose up
```

- DB create & migrate

```bash
docker-compose exec app bundle exec rails db:prepare
```

## 2 回目からは

- Run docker-compose

```bash
docker-compose up
```

- Run server

```bash
docker-compose exec app bash
```

```bash
foreman start
```
