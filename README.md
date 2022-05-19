

# Steps

## Setting up postgreSQL

docker pull postgres:12-alpine

docker run --name postgres12 -p 5434:5434 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:12-alpine
