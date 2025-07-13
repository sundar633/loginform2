# Use official PHP Apache image
FROM php:8.2-apache

# Enable mod_rewrite (if you want .htaccess)
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy all your project files to container
COPY . .

# Optional: Give permissions to Apache
RUN chown -R www-data:www-data /var/www/html
