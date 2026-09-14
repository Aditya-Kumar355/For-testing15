# Use Apache HTTP Server as the base image
FROM httpd:2.4

# Copy HTML file into Apache's default web directory
COPY index.html /usr/local/apache2/htdocs/

# Expose Apache's HTTP port
EXPOSE 80

# Start Apache in foreground
CMD ["httpd", "-D", "FOREGROUND"]
