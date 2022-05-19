postgres:
	docker run --name postgres12 -p 5434:5434 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:12-alpine

createdb:
	docker exec -it postgres12 createdb --username=root --owner=root mybank

dropdb:
	docker exec -it postgres dropdb simple_bank

.PHONY:
	postgres createdb dropdb

