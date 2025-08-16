# Use an appropriate base image
FROM python:3.11-slim

WORKDIR /app

# Copy app files
COPY . /app

# Install dependencies (adjust according to app type)
RUN pip install -r requirements.txt

# Expose the correct port (85 as per requirement)
EXPOSE 85

# Command to run the app (adjust if it's Flask/Django/Node etc.)
CMD ["python", "app.py"]

