FROM python:3.11-slim

ARG POETRY_VERSION=1.6.1
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

WORKDIR /src
RUN pip install poetry~=${POETRY_VERSION}

COPY poetry.lock pyproject.toml /
RUN poetry config virtualenvs.create false \
    && poetry install --no-dev --no-interaction --no-ansi

COPY src /src

CMD ["python", "main.py"]