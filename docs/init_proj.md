# CREATE RAILS PROJECT

- create Gemfile, Gemfile.lock

- create rails project

```bash
docker-compose run --rm app rails new . --force --database=mysql --skip-test --skip-turbolinks
```

## Set vuejs

```bash
bundle exec rails webpacker:install:vue
```
