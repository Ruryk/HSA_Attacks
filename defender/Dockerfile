# Dockerfile for Defender
FROM ubuntu:latest

# Update packages and install Nginx and the necessary security tools
RUN #apt-get update && apt-get install -y nginx iptables fail2bandoc
RUN apt-get update && apt-get install -y nginx

# Copy the Nginx configuration file from the config folder
COPY ./config/nginx.conf /etc/nginx/nginx.conf

# Copy a simple web page for testing
COPY ./www/index.html /var/www/html/index.html

# Add basic rules for protection via iptables
#COPY ./scripts/setup_iptables.sh /usr/local/bin/setup_iptables.sh
RUN #chmod +x /usr/local/bin/setup_iptables.sh
RUN #/usr/local/bin/setup_iptables.sh

# Setting up fail2ban to protect against excessive requests
#COPY ./scripts/setup_fail2ban.sh /usr/local/bin/setup_fail2ban.sh
RUN #chmod +x /usr/local/bin/setup_fail2ban.sh
RUN #/usr/local/bin/setup_fail2ban.sh

# Starting Nginx and other necessary processes
#CMD service fail2ban start && nginx -g 'daemon off;'
CMD ["nginx", "-g", "daemon off;"]
