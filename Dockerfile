# Use an official Python runtime as a base image
FROM python:3.9-slim

LABEL maintainer="thejeshm"

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

# Expose the port the application runs on
EXPOSE 5000

# Set the command to run the application
CMD ["python", "app.py"]