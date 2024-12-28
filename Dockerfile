# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory to /app
WORKDIR /app

# Install Pandas, Jupyter, and OpenSSL
RUN apt-get update && apt-get install -y openssl \
    && pip install pandas jupyter jupyterlab matplotlib seaborn \
    && mkdir -p /certs

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh
# Make Entry Point Executable
RUN chmod +x /entrypoint.sh

# Set the default entrypoint to the entrypoint script
ENTRYPOINT ["/entrypoint.sh"]