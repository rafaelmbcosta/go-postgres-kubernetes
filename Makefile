postgres:
	docker run --name postgres12 -p 5434:5434 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:12-alpine

createdb:
	docker exec -it postgres12 createdb --username=root --owner=root mybank

dropdb:
	docker exec -it postgres dropdb simple_bank

migrateup:
	migrate --path db/migration --database "postgresql://root:secret@localhost:5432/mybank?sslmode=disable" --verbose up

sqlc:
	sqlc generate

.PHONY:
	postgres createdb dropdb migrateup sqlc

