# Use an official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your Python script and dataset
COPY . .

# Run the Python script
CMD ["python", "iris_logistic.py"]
