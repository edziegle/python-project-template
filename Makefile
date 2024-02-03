.PHONY: run lint fmt lint fix

run:
	poetry run python src/main.py

test:
	poetry run pytest

fmt:
	# Run formatting
	poetry run ruff format


lint:
	# Run linting
	poetry run ruff check

fix: fmt
	poetry run ruff check --fix
