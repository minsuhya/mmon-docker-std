FROM php:8.1.23-fpm-alpine AS base

# Arguments defined in docker-compose.yml
ARG user
ARG uid

# Install system dependencies
RUN apk --update add wget \
    git \
    make \
    g++ \
    gcc \
    curl \
    libpng-dev \
    oniguruma-dev \
    icu-dev \
    libxml2-dev \
    imagemagick-dev \
    libzip-dev \
    imagemagick \
    librdkafka-dev \
    pcre-dev \
    libtool \
    zip \
    autoconf \
    unzip

# RUN apt-get update && apt-get install -y \
#     git \
#     curl \
#     libpng-dev \
#     libonig-dev \
#     libxml2-dev \
#     libzip-dev \
#     libmagickwand-dev \
#     librdkafka-dev \
#     zip \
#     unzip

# Clear cache
# RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install intl pdo_mysql mysqli opcache mbstring exif pcntl bcmath gd zip

RUN pecl channel-update pecl.php.net \
    && pecl install redis \
    && pecl install imagick \
    && pecl install rdkafka \
    && docker-php-ext-enable redis \
    && docker-php-ext-enable imagick \
    && docker-php-ext-enable rdkafka

# RUN pecl install redis && docker-php-ext-enable redis
# RUN pecl install imagick && docker-php-ext-enable imagick
# RUN pecl install rdkafka && docker-php-ext-enable rdkafka


# Clean up
RUN rm /var/cache/apk/* && \
    mkdir -p /var/www

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
RUN adduser --disabled-password -u $uid -h /home/$user $user \
    && addgroup $user www-data \
    && addgroup $user root

# RUN useradd -G www-data,root -u $uid -h /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# Set working directory
WORKDIR /var/www

USER $user
