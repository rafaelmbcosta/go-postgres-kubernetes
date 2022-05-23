# About

This is a study project based on a course named 'Backend Master Class [Golang + PostgreSQL + Kubernetes]'

# content

* go-migrations
* postgreSQL

## Before installing

* Install golang
* Install go-migrate

## Setting up the project

1. download the image
```
docker pull postgres:12-alpine
```

2. run the container
```
make postgres
```

3. creating the database
```
make createdb
```

4. migrating the database
```
make migrateup
```

## Other commands

* access the container
```
docker exec -it postgres12 psql -U root
```

* access logs
```
docker logs postgres12
```

* access the database
```
docker exec -it postgres12 psql -U root mybank
```

* drop the database
```
  make dropdb
```
