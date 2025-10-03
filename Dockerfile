# Use stable python version instead of latest
FROM python:3.11-slim

# Prevent Python from writing pyc files
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    make \
    libffi-dev \
    libssl-dev \
    libpq-dev \
    python3-dev \
    ffmpeg \
    aria2 \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip, setuptools, wheel
RUN pip3 install --upgrade pip setuptools wheel

# Copy requirements first (for docker caching)
COPY requirements.txt /requirements.txt

# Install python dependencies
RUN pip3 install --no-cache-dir -r /requirements.txt

# Create working directory
RUN mkdir -p /EXTRACTOR
WORKDIR /EXTRACTOR

# Copy rest of the code
COPY . /EXTRACTOR

# Give permission to start.sh
RUN chmod +x /start.sh

# Start the app
CMD ["/bin/bash", "/start.sh"]
