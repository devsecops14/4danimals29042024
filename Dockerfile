# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install Flask Flask_SQLAlchemy

# Copy and set permissions for the entrypoint script
#COPY entrypoint.sh /usr/src/app
#RUN chmod +x /usr/src/app/entrypoint.sh

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV FLASK_APP=app.py

# Run the entrypoint script
ENTRYPOINT ["./startup.sh"]

# Command to run the Flask application
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]

