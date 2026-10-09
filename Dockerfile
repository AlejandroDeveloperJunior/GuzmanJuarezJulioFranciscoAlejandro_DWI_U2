FROM php:8.3-apache

# Habilitar mod_rewrite de Apache si es necesario
RUN a2enmod rewrite

# Copiar el código fuente de la aplicación al directorio web de Apache
COPY . /var/www/html/

# Ajustar permisos adecuados
RUN chown -R www-data:www-data /var/www/html

# Exponer el puerto estándar HTTP
EXPOSE 80

CMD ["apache2-foreground"]
