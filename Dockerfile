FROM python:latest

# Install pipenv
RUN pip install pipenv

# Set the working directory to /app (you can adjust this to your application's directory)
WORKDIR /app

# Copy your application code to the container
COPY . /app

# Install Flask using pipenv inside the container
RUN pipenv install --deploy --ignore-pipfile

# Define the entry point and command
ENTRYPOINT ["pipenv", "run"]
CMD ["python", "app1.py"]