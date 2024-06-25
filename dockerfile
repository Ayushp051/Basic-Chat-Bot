# Use the official Python image from the Docker Hub
FROM python:3.9-slim

WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8501

CMD ["streamlit", "run", "main.py"]
