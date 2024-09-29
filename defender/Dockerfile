# Dockerfile for Defender
FROM ubuntu:latest

# Update packages and install Nginx and the necessary security tools
RUN apt-get update && apt-get install -y nginx

# Copy the Nginx configuration file from the config folder
COPY ./config/nginx.conf /etc/nginx/nginx.conf

# Copy a simple web page for testing
COPY ./www/index.html /var/www/html/index.html

# Starting Nginx and other necessary processes
CMD ["nginx", "-g", "daemon off;"]
