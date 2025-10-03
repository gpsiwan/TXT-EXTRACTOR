
# Python Based Docker
FROM python:latest

RUN apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    gcc \
    g++ \
    libffi-dev \
    libssl-dev \
    make \
    ninja-build \
    && rm -rf /var/lib/apt/lists/*

# Update pip, setuptools, wheel before installing requirements
RUN pip3 install --upgrade pip setuptools wheel

# Installing Packages
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg aria2 -y

# Updating Pip Packages
RUN pip3 install -U pip

# Copying Requirements
COPY requirements.txt /requirements.txt

# Installing Requirements
RUN cd /
RUN pip3 install -U -r requirements.txt
RUN mkdir /EXTRACTOR
WORKDIR / EXTRACTOR
COPY start.sh /start.sh

# Running MessageSearchBot
CMD ["/bin/bash", "/start.sh"
