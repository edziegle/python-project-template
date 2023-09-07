# python-project-template
Just a simple "lets get started now" Python project template.

## Batteries Included
This project will include the following:
- [x] A `Makefile` with common commands, such as formatting (black) and linting (flake8 and pylint)
- [x] [Poetry](https://python-poetry.org/docs/) for dependency management
- [x] [Docker](https://www.docker.com/) for containerization
- [x] `pytest` for testing (including customization for random, parallel test runs)
- [x] `black` for code formatting
- [x] `flake8` for linting
- [x] `pylint` for linting (but with a custom config that disables some of the more "pedantic" rules)

Also included, because I find I use them in almost every project:
- [x] [pydantic](https://pydantic.dev/) for data validation and structuring
- [x] `boto3` for AWS interactions (including optional stubs library in the `dev` group)


Feel free to remove or add any of these as you see fit.

## Setup
```bash
# Install Poetry: https://python-poetry.org/docs/#installation and setup the environment:
poetry install --no-root
```

Take note of the virtualenv path it outputs, and add it to your IDE's Python interpreter (PyCharm usually does this automatically for you).

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
