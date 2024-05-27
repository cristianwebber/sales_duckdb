env:
	source venv/bin/activate

db:
	./duckdb db.duckdb

run:
	dbt run

test:
	dbt test
