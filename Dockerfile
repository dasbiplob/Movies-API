# Use Python image specifically for ARM64
FROM --platform=linux/arm64 python:3.10-slim

# Set working directory
WORKDIR /code

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements first for better caching
COPY ./requirements.txt /code/requirements.txt

# Install Python dependencies
RUN pip3 install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy application code
COPY ./app /code/

# Expose the port the app runs on
EXPOSE 8000

# Use CMD to run the application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
