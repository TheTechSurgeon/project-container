# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory to /app
WORKDIR /app

# Install Flask
RUN pip install --no-cache-dir Flask

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 80 for the Flask app to listen on
EXPOSE 80

# Start the Flask app when the container launches
CMD ["python", "app.py"]
