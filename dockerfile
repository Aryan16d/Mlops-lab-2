# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements first (for faster build caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your source code into the container
COPY src/ .

# Ensure the working_data folder exists inside the container
RUN mkdir -p working_data

# Run the script when the container launches
CMD ["python", "main.py"]
