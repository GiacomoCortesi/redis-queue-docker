# Use a minimal Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install Redis Queue (RQ)
RUN pip install rq

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["/entrypoint.sh"]
