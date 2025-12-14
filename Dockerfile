# Use the official Python image from the Docker Hub
FROM python:3.13
# Set the working directory in the container
WORKDIR /app
# Upgrade pip to the latest version
RUN pip install --upgrade pip
# Copy the requirements file into the container
COPY requirements.txt /app/
# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt
# Copy the rest of the application code into the container
COPY ./app /app/
# Expose the port that the application will run on
EXPOSE 8000
# Define the command to run the application
CMD ["python", "manage.py","runserver", "0.0.0.0:8000"]