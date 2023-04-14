FROM python:3.8-slim-buster

# Create a non-root user
RUN adduser --disabled-password --gecos "" appuser
WORKDIR /home/appuser

# Copy the requirements file and install the dependencies
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the application code setup.py
COPY setup.py .

# Change to the non-root user
USER appuser

# Expose the port that Flask runs on
EXPOSE 5000

# Set the default command for the container
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=5000"]