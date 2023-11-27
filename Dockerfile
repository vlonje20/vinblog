# Use the official image of Ubuntu as the base image
FROM ubuntu:latest

# Update the package list and install Apache2
RUN apt-get update && apt-get install -y apache2

# Copy the HTML files from the current directory to the Apache2 document root
COPY . /var/www/html/

# Expose port 80 to allow external access
EXPOSE 80

# Start the Apache2 service
CMD ["apachectl", "-D", "FOREGROUND"]
