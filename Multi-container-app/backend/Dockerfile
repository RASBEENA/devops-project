FROM python:3.11-alpine

# Set work directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app
COPY app.py .

# Expose port 5000
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
