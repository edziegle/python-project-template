.PHONY: run lint fmt lint fix

run:
	poetry run python src/main.py

test:
	poetry run pytest

fmt:
	# Run formatting
	poetry run black .


lint:
	# Run linting
	poetry run black --check .
	poetry run flake8 .
	poetry run pylint src

fix: fmt lint
