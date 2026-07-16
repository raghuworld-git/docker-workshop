# Start with slim Python 3.13 image
FROM python:3.13.10-slim

# Set working directory
WORKDIR /app

# Copy dependency metadata and install dependencies
COPY pyproject.toml pyproject.toml
RUN python -m pip install --upgrade pip setuptools wheel
RUN python -m pip install --no-cache-dir .

# Copy application code
COPY pipeline/ pipeline/

# Set entry point
ENTRYPOINT ["python", "pipeline/ingest_data.py"]