# Step 1: Define the base image
FROM python:3.9-slim

# Step 2: Set environment variables (Optional)
ENV PYTHONUNBUFFERED 1
ENV APP_HOME /app

# Step 3: Create and set the working directory
WORKDIR $APP_HOME

# Step 4: Copy requirements.txt and install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the application files into the container
COPY . .

# Step 6: Expose a port (Optional)
EXPOSE 8000

# Step 7: Define the command to run the application
CMD ["python", "app.py"]
