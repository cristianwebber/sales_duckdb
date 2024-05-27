db:
	@./duckdb db.duckdb

run:
	@dbt run

test:
	@dbt test

lint:
	@sqlfluff lint

fix:
	@sqlfluff fix
