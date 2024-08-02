FROM python:3.10

# Set the working directory
# WORKDIR /app

RUN mkdir -p /app/.cache && apt-get update &&  \
    apt-get upgrade -y && \
    apt-get install -y \
    jq \
    curl \
    ca-certificates \
    gcc \
    git \
    wget \
    git \
    git-lfs \
    docker.io \
    awscli \
    unzip && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
 
# Copy requirements.txt to the working directory
# COPY requirements.txt .

# Install the required Python packages
RUN pip install yq pydantic PyYAML Jinja2 colorlog pytz requests virtualenv

# Set the entrypoint to the Python script
# ENTRYPOINT ["python", "script.py"]
