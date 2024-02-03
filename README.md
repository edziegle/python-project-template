# python-project-template
Just a simple "lets get started now" Python project template.

## Batteries Included
This project will include the following:
- [x] A `Makefile` with common commands, such as formatting and linting (using ruff)
  - In the past, this Makefile orchestrated `black`, `flake8` and `pylint` together, but with `ruff`
- [x] [Poetry](https://python-poetry.org/docs/) for dependency management
- [x] [Docker](https://www.docker.com/) for containerization
- [x] `pytest` for testing (including customization for random, parallel test runs)
- [x] `ruff` for linting and formatting.
  - Previously this template used `flake8`, `pylint` and `black` which ruff supersedes, however, the configuration for these tools is left in place, for those that need legacy support.
  - The included optional pylint config disables several of pylint's more "pedantic" heuristics.

Also included, because I find I use them in almost every project:
- [x] [pydantic](https://pydantic.dev/) for data validation and structuring
- [x] `boto3` for AWS interactions (including optional stubs library in the `dev` group)

Feel free to remove or add any of these as you see fit, make the template what you need!

## Changelog

### 0.2.0
- Added `ruff` in place of `black`, `flake8` and `pylint`

### 0.1.0
Initial template

## Setup
```bash
# Install Poetry: https://python-poetry.org/docs/#installation and setup the environment:
poetry install --no-root
```

Take note of the virtualenv path it outputs, and add it to your IDE's Python interpreter (PyCharm usually does this automatically for you).

If you intend to build a python library/package with this template, add the following to your `pyproject.toml` in the `[tools.poetry]` section:
```toml
# https://python-poetry.org/docs/pyproject/#packages
packages = [
    { include = "my_package" },
    { include = "extra_package/**/*.py" },
]
```

### Adding or Removing Dependencies
```bash
# Add a dependency
poetry add <dependency>

# Add a dev dependency
poetry add <dependency> --group dev

# Add a test dependency
poetry add <dependency> --group test
```

To remove:
```bash
poetry remove <dependency>
```
