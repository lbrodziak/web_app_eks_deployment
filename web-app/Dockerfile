# Use the official lightweight Python image as the base image
FROM python:3.8-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy requirements.txt and install Python dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 5000 for the application
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
