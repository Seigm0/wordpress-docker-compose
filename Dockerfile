FROM wordpress:6.6.1

# Instalar dependencias necesarias
RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/*

# Descargar e instalar WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp
