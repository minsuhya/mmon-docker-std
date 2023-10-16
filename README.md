<!-- vim-markdown-toc GFM -->

- [Mmon Docker Compose Standard Environment Variable Setting](#mmon-docker-compose-standard-environment-variable-setting)
    - [docker-compose .env 작성](#docker-compose-env-작성)
    - [docker-compose .env 환경변수 기반 nginx server_name 변환 및 laravel.conf 생성](#docker-compose-env-환경변수-기반-nginx-server_name-변환-및-laravelconf-생성)
- [Mmon Docker Compose Standard Github URL](#mmon-docker-compose-standard-github-url)
- [1. Mmon 솔루션 디렉토리 구조](#1-mmon-솔루션-디렉토리-구조)
- [2. docker-compose.yaml 작성](#2-docker-composeyaml-작성)
- [3. PHP-FPM Dockerfile 작성(php-fpm/Dockerfile)](#3-php-fpm-dockerfile-작성php-fpmdockerfile)
- [3-1. PHP-Worker Dockerfile 작성(php-worker/Dockerfile)](#3-1-php-worker-dockerfile-작성php-workerdockerfile)
- [4. Nginx Virtual Host Config 파일 확인](#4-nginx-virtual-host-config-파일-확인)
- [5. Mmon Git Repository Clone & install](#5-mmon-git-repository-clone--install)
- [6. Env 환경설정 파일 적재 (로컬개발환경 - 개발자 PC 환경)](#6-env-환경설정-파일-적재-로컬개발환경---개발자-pc-환경)
- [7. Mmon 솔루션 Docker Compose Build & Up & PHP Composer install](#7-mmon-솔루션-docker-compose-build--up--php-composer-install)
- [8. 로컬 브라우저 확인 및 개발 디버깅](#8-로컬-브라우저-확인-및-개발-디버깅)
- [9. Mmon 솔루션 관리](#9-mmon-솔루션-관리)

<!-- vim-markdown-toc -->

# Mmon Docker Compose Standard Environment Variable Setting
Mmon 솔루션 구성에 필요한 환경변수 설정
Mmon 솔루션 Root Directory의 .env 파일의 환경변수 설정

### docker-compose .env 작성
docker compose environments .env 기반 개발도메인 설정

- .env file
```env
# 솔루션 도메인
MMON_SCM_URL=scm.rupi.co.kr
MMON_SELLER_URL=seller.rupi.co.kr
MMON_API_URL=api.rupi.co.kr
MMON_BACKEND_URL=backend.rupi.co.kr

# Redis 포트 설정
MMON_FORWARD_REDIS_PORT=6379

# 솔루션 설치경로 (default: mmon-solution)
#MMON_WORKDIR=mmon-solution
```

### docker-compose .env 환경변수 기반 nginx server_name 변환 및 laravel.conf 생성

```bash
$ sh ./00-gen-nginx-conf.sh
```


# Mmon Docker Compose Standard Github URL

- mmon-docker-std: https://github.com/m-monstar/mmon-docker-std

```bash
$ git clone https://github.com/m-monstar/mmon-docker-std ./mmon-solution
```

# 1. Mmon 솔루션 디렉토리 구조

1.  솔루션 디렉토리 구조
    ```

    $ mkdir -p ~/mmon-solution # ~: 사용자 홈디렉토리
    $ cd ~/mmon-solution
    $ tree -L 2 # 디렉토리 구조
    ├── config # nginx,php-fpm,mysql 환경설정 및 개발환경별 .env 파일
    │   ├── mysql # mysql.env file
    │   └── nginx # Nginx Config File
    │   └── php-fpm # php-fpm config file
    ├── docker-compose.laradock.yaml # laradock docker compose 파일 - 참고용
    ├── docker-compose.yaml # docker compose yaml 작성 파일
    ├── .env # docker compose 환경변수 설정 파일
    ├── initdb.d # 데이터베이스 초기화
    │   ├── 00-mmon_v2_mall_shop.sql
    │   ├── 01-mmon_v2_diquest.sql
    │   ├── 02-mmon_v2_mts.sql
    │   ├── 03-mmon_v2_partner_shop.sql
    │   ├── 04-mmon_v2_coocon.sql
    │   └── 99-create_user.sql
    ├── initdb.d.sample
    │   └── 03-mmon_v2_partner_shop.istock.data.sql
    ├── install.sh # docker compose 빌드 스크립트
    ├── compose-init.sh # php composer install 스크립트
    ├── php-fpm
    │   └── Dockerfile # php-fpm based Laravel 이미지 생성 Dockerfile 작성
    ├── php-worker
    │   ├── Dockerfile # php-worker laravel app 이미지 생성 Dockerfile 작성
    │   ├── supervisord.conf # supervisord 설정 파일
    │   └── supervisord.d # supervisord 관련 프로그램 파일
    ├── README.md # 사용메뉴얼
    ├── src
    │   ├── api # api 소스 
    │   ├── backend # backend 소스
    │   └── scm # scm 소스
    └── vendor
        ├── mmon-api-vendor
        ├── mmon-backend-vendor
        └── mmon-scm-vendor
    ```

2.  config 디렉토리 구조
    ```
    config
    ├── .env.api.local # Api 서비스 개발환경
    ├── .env.api.test # Api 서비스 테스트환경
    ├── .env.backend.local
    ├── .env.backend.test
    ├── .env.local
    ├── .env.scm.local
    ├── .env.scm.test
    ├── mysql # mysql .env - docker-compose 사용
    ├── nginx # nginx virtual host 설정
    │   └── conf.d
    │       └── laravel.conf # nginx virtual config 파일
    │       └── laravel.conf.template # install.sh 실행 시 server_name 설정 후 laravel.conf 생성
    └── php-fpm # php-fpm 설정 파일
        ├── pear.conf
        ├── php
        │   ├── conf.d
        │   │   ├── docker-fpm.ini
        │   │   ├── docker-php-ext-bcmath.ini
        │   │   ├── docker-php-ext-exif.ini
        │   │   ├── docker-php-ext-gd.ini
        │   │   ├── docker-php-ext-imagick.ini
        │   │   ├── docker-php-ext-intl.ini
        │   │   ├── docker-php-ext-mysqli.ini
        │   │   ├── docker-php-ext-opcache.ini
        │   │   ├── docker-php-ext-pcntl.ini
        │   │   ├── docker-php-ext-pdo_mysql.ini
        │   │   ├── docker-php-ext-rdkafka.ini
        │   │   ├── docker-php-ext-redis.ini
        │   │   ├── docker-php-ext-sodium.ini
        │   │   └── docker-php-ext-zip.ini
        │   ├── php.ini-development
        │   └── php.ini-production
        ├── php-fpm.conf
        └── php-fpm.d
            ├── docker.conf
            ├── www.conf
            └── zz-docker.conf
    ```

# 2. docker-compose.yaml 작성

```yaml
version: "3.7"
services:
  # Laravel SCM
  scm:
    build:
      args:
        user: "${USER}"
        uid: 1000
      context: ./php-fpm
      dockerfile: Dockerfile
    image: laravel-app
    restart: unless-stopped
    working_dir: /var/www/
    ports:
      - 9000:9000
    volumes:
      - ./src/:/var/www
      # - ./config/php-fpm/:/usr/local/etc
    # command: "composer install --working-dir=/var/www/scm"
    extra_hosts:
      - "host.docker.internal:host-gateway"
      - "${MMON_SCM_URL}:host-gateway"
      - "${MMON_SELLER_URL}:host-gateway"
    networks:
      - frontend
      - backend

  # Laravel API
  api:
    image: laravel-app
    restart: unless-stopped
    working_dir: /var/www/
    ports:
      - 9001:9000
    volumes:
      - ./src/:/var/www
    # command: "composer install --working-dir=/var/www/api"
    extra_hosts:
      - "host.docker.internal:host-gateway"
      - "${MMON_API_URL}:host-gateway"
    depends_on:
      - scm
    networks:
      - frontend
      - backend

  # Laravel Backend
  backend:
    image: laravel-app
    restart: unless-stopped
    working_dir: /var/www/
    ports:
      - 9002:9000
    volumes:
      - ./src/:/var/www
    # command: "composer install --working-dir=/var/www/backend"
    extra_hosts:
      - "host.docker.internal:host-gateway"
      - "${MMON_BACKEND_URL}:host-gateway"
    depends_on:
      - scm
    networks:
      - frontend
      - backend

  # Nginx Service
  nginx:
    image: nginx:alpine
    restart: unless-stopped
    ports:
      - 8000:80
    volumes:
      - ./src/:/var/www
      - ./config/nginx/conf.d:/etc/nginx/conf.d/
    networks:
      - frontend
      - backend

  # Mysql Service
  db:
    image: mysql:8
    restart: unless-stopped
    ports:
      - 33306:3306
    env_file: ./config/mysql/mysql.env
    extra_hosts:
      - "host.docker.internal:host-gateway"
    volumes:
      - ./initdb.d:/docker-entrypoint-initdb.d:rw
    healthcheck:
      test:
        - CMD
        - mysqladmin
        - ping
        - '-pMmon0706#'
      retries: 3
      timeout: 5s
    networks:
      - frontend
      - backend

  # Redis
  redis:
    image: redis:alpine
    ports:
      - '${FORWARD_REDIS_PORT:-6379}:6379'
    labels:
      - "name=redis"
      - "mode=standalone"
    # 컨테이너 종료시 재시작 여부 설정
    restart: unless-stopped
    # restart: always
    # volumes:
      # - ./redis/data:/data
      # - ./redis/conf/redis.conf:/usr/local/conf/redis.conf
    # command: redis-server /usr/local/conf/redis.conf
    command: redis-server --port 6379
    healthcheck:
      test:
        - CMD
        - redis-cli
        - ping
      retries: 3
      timeout: 5s
    networks:
      - frontend
      - backend

  # PHP-Worker
  php-worker:
    build:
      context: ./php-worker
    volumes:
      - ./src/:/var/www
      - ./php-worker/supervisord.d:/etc/supervisord.d
    depends_on:
      - scm
    extra_hosts:
      - "host.docker.internal:host-gateway"
    networks:
      - frontend
      - backend

networks:
  frontend:
    driver: bridge
  backend:
    driver: bridge
```

# 3. PHP-FPM Dockerfile 작성(php-fpm/Dockerfile)

Laravel + PHP-FPM docker image 생성 파일
```dockerfile
FROM php:8.1.23-fpm

# Arguments defined in docker-compose.yml
ARG user
ARG uid

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    libmagickwand-dev \
    librdkafka-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install intl pdo_mysql mysqli opcache mbstring exif pcntl bcmath gd zip
RUN pecl install redis && docker-php-ext-enable redis
RUN pecl install imagick && docker-php-ext-enable imagick
RUN pecl install rdkafka && docker-php-ext-enable rdkafka

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user

# Set working directory
WORKDIR /var/www

USER $user
```

# 3-1. PHP-Worker Dockerfile 작성(php-worker/Dockerfile)

Laravel + Supervisord docker image 생성 파일
```dockerfile
FROM php:8.1.23-alpine

# Install system dependencies
RUN apk --update add wget \
  curl \
  git \
  build-base \
  libmcrypt-dev \
  libxml2-dev \
  linux-headers \
  pcre-dev \
  zlib-dev \
  autoconf \
  cyrus-sasl-dev \
  libgsasl-dev \
  oniguruma-dev \
  librdkafka-dev \
  supervisor; \
  if [ $(php -r "echo PHP_VERSION_ID - PHP_RELEASE_VERSION;") = "50600" ] || \
     [ $(php -r "echo PHP_VERSION_ID - PHP_RELEASE_VERSION;") = "70000" ]; then \
    apk --update add libressl libressl-dev; \
  else \
    apk --update add openssl-dev; \
  fi


RUN pecl channel-update pecl.php.net; \
  docker-php-ext-install mysqli mbstring pdo pdo_mysql xml pcntl; \
  if [ $(php -r "echo PHP_VERSION_ID - PHP_RELEASE_VERSION;") = "80100" ] || \
     [ $(php -r "echo PHP_VERSION_ID - PHP_RELEASE_VERSION;") = "80200" ]; then \
    php -m | grep -oiE '^tokenizer$'; \
  else \
    docker-php-ext-install tokenizer; \
  fi

# Add a non-root user:
ARG PUID=1000
ENV PUID ${PUID}
ARG PGID=1000
ENV PGID ${PGID}

#Install BZ2:
ARG INSTALL_BZ2=false
RUN if [ ${INSTALL_BZ2} = true ]; then \
  apk --update add bzip2-dev; \
  docker-php-ext-install bz2; \
  fi

# Install Kafka
RUN pecl install rdkafka && docker-php-ext-enable rdkafka

###########################################################################
# PHP GnuPG:
###########################################################################

ARG INSTALL_GNUPG=false

RUN set -eux; if [ ${INSTALL_GNUPG} = true ]; then \
  apk add --no-cache --no-progress --virtual BUILD_DEPS_PHP_GNUPG gpgme-dev; \
  apk add --no-cache --no-progress gpgme; \
  pecl install gnupg; \
  docker-php-ext-enable gnupg; \
  fi

#Install LDAP
ARG INSTALL_LDAP=false;
RUN set -eux; if [ ${INSTALL_LDAP} = true ]; then \
  apk add --no-cache --no-progress openldap-dev; \
  docker-php-ext-install ldap; \
  php -m | grep -oiE '^ldap$'; \
  fi

#Install GD package:
ARG INSTALL_GD=false
RUN if [ ${INSTALL_GD} = true ]; then \
  apk add --update --no-cache freetype-dev libjpeg-turbo-dev jpeg-dev libpng-dev; \
  if [ $(php -r "echo PHP_MAJOR_VERSION;") = "7" ] && [ $(php -r "echo PHP_MINOR_VERSION;") = "4" ]; then \
  docker-php-ext-configure gd --with-freetype --with-jpeg; \
  else \
  docker-php-ext-configure gd --with-freetype-dir=/usr/lib/ --with-jpeg-dir=/usr/lib/ --with-png-dir=/usr/lib/; \
  fi; \
  docker-php-ext-install gd \
  ;fi

#Install ImageMagick:
ARG INSTALL_IMAGEMAGICK=false
ARG IMAGEMAGICK_VERSION=latest
ENV IMAGEMAGICK_VERSION ${IMAGEMAGICK_VERSION}
RUN set -eux; \
  if [ ${INSTALL_IMAGEMAGICK} = true ]; then \
  apk add --update --no-cache imagemagick-dev imagemagick; \
  if [ $(php -r "echo PHP_MAJOR_VERSION;") = "8" ]; then \
  cd /tmp && \
  if [ ${IMAGEMAGICK_VERSION} = "latest" ]; then \
  git clone https://github.com/Imagick/imagick; \
  else \
  git clone --branch ${IMAGEMAGICK_VERSION} https://github.com/Imagick/imagick; \
  fi && \
  cd imagick && \
  phpize && \
  ./configure && \
  make && \
  make install && \
  rm -r /tmp/imagick; \
  else \
  pecl install imagick; \
  fi && \
  docker-php-ext-enable imagick; \
  php -m | grep -q 'imagick'; \
  fi

#Install GMP package:
ARG INSTALL_GMP=false
RUN if [ ${INSTALL_GMP} = true ]; then \
  apk add --update --no-cache gmp gmp-dev \
  && docker-php-ext-install gmp \
  ;fi

#Install BCMath package:
ARG INSTALL_BCMATH=false
RUN if [ ${INSTALL_BCMATH} = true ]; then \
  docker-php-ext-install bcmath \
  ;fi

#Install SOAP package:
ARG INSTALL_SOAP=false
RUN if [ ${INSTALL_SOAP} = true ]; then \
  docker-php-ext-install soap \
  ;fi

# Install MongoDB drivers:
ARG INSTALL_MONGO=false
RUN if [ ${INSTALL_MONGO} = true ]; then \
    if [ $(php -r "echo PHP_MAJOR_VERSION;") = "5" ]; then \
      pecl install mongo; \
      docker-php-ext-enable mongo; \
      php -m | grep -oiE '^mongo$'; \
    else \
      if [ $(php -r "echo PHP_MAJOR_VERSION;") = "7" ] && { [ $(php -r "echo PHP_MINOR_VERSION;") = "0" ] || [ $(php -r "echo PHP_MINOR_VERSION;") = "1" ] ;}; then \
        pecl install mongodb-1.9.2; \
      else \
        pecl install mongodb; \
      fi; \
      docker-php-ext-enable mongodb; \
      php -m | grep -oiE '^mongodb$'; \
    fi; \
  fi

###########################################################################
# PHP OCI8:
###########################################################################

ARG INSTALL_OCI8=false

ENV LD_LIBRARY_PATH="/usr/local/instantclient"
ENV ORACLE_HOME="/usr/local/instantclient"

RUN if [ ${INSTALL_OCI8} = true ] && [ $(php -r "echo PHP_MAJOR_VERSION;") = "7" ]; then \
  apk add make php7-pear php7-dev gcc musl-dev libnsl libaio poppler-utils libzip-dev zip unzip libaio-dev freetds-dev && \
  ## Download and unarchive Instant Client v11
  curl -o /tmp/basic.zip https://raw.githubusercontent.com/bumpx/oracle-instantclient/master/instantclient-basic-linux.x64-11.2.0.4.0.zip && \
  curl -o /tmp/sdk.zip https://raw.githubusercontent.com/bumpx/oracle-instantclient/master/instantclient-sdk-linux.x64-11.2.0.4.0.zip && \
  curl -o /tmp/sqlplus.zip https://raw.githubusercontent.com/bumpx/oracle-instantclient/master/instantclient-sqlplus-linux.x64-11.2.0.4.0.zip && \
  unzip -d /usr/local/ /tmp/basic.zip && \
  unzip -d /usr/local/ /tmp/sdk.zip && \
  unzip -d /usr/local/ /tmp/sqlplus.zip \
  ## Links are required for older SDKs
  && ln -s /usr/local/instantclient_11_2 ${ORACLE_HOME} && \
  ln -s ${ORACLE_HOME}/libclntsh.so.* ${ORACLE_HOME}/libclntsh.so && \
  ln -s ${ORACLE_HOME}/libocci.so.* ${ORACLE_HOME}/libocci.so && \
  ln -s ${ORACLE_HOME}/lib* /usr/lib && \
  ln -s ${ORACLE_HOME}/sqlplus /usr/bin/sqlplus &&\
  ln -s /usr/lib/libnsl.so.2.0.0  /usr/lib/libnsl.so.1 && \
  ## Build OCI8 with PECL
  echo "instantclient,${ORACLE_HOME}" | pecl install oci8 && \
  echo 'extension=oci8.so' > /etc/php7/conf.d/30-oci8.ini \
  #  Clean up
  apk del php7-pear php7-dev gcc musl-dev && \
  rm -rf /tmp/*.zip /tmp/pear/ && \
  docker-php-ext-configure pdo_oci --with-pdo-oci=instantclient,/usr/local/instantclient \
  && docker-php-ext-configure pdo_dblib --with-libdir=/lib \
  && docker-php-ext-install pdo_oci \
  && docker-php-ext-enable oci8 \
  && docker-php-ext-install zip && \
  # Install the zip extension
  docker-php-ext-configure zip && \
  php -m | grep -q 'zip' \
  ;fi

# Install PostgreSQL drivers:
ARG INSTALL_PGSQL=false
RUN if [ ${INSTALL_PGSQL} = true ]; then \
  apk --update add postgresql-dev \
  && docker-php-ext-install pdo_pgsql \
  ;fi

# Install ZipArchive:
ARG INSTALL_ZIP_ARCHIVE=false
RUN set -eux; \
  if [ ${INSTALL_ZIP_ARCHIVE} = true ]; then \
  apk --update add libzip-dev && \
  if [ ${LARADOCK_PHP_VERSION} = "7.3" ] || [ ${LARADOCK_PHP_VERSION} = "7.4" ] || [ $(php -r "echo PHP_MAJOR_VERSION;") = "8" ]; then \
  docker-php-ext-configure zip; \
  else \
  docker-php-ext-configure zip --with-libzip; \
  fi && \
  # Install the zip extension
  docker-php-ext-install zip \
  ;fi

# Install MySQL Client:
ARG INSTALL_MYSQL_CLIENT=false
RUN if [ ${INSTALL_MYSQL_CLIENT} = true ]; then \
  apk --update add mysql-client \
  ;fi

# Install FFMPEG:
ARG INSTALL_FFMPEG=false
RUN if [ ${INSTALL_FFMPEG} = true ]; then \
  apk --update add ffmpeg \
  ;fi

# Install BBC Audio Waveform Image Generator:
ARG INSTALL_AUDIOWAVEFORM=false
RUN if [ ${INSTALL_AUDIOWAVEFORM} = true ]; then \
  apk add git make cmake gcc g++ libmad-dev libid3tag-dev libsndfile-dev gd-dev boost-dev libgd libpng-dev zlib-dev \
  && apk add autoconf automake libtool gettext \
  && wget https://github.com/xiph/flac/archive/1.3.3.tar.gz \
  && tar xzf 1.3.3.tar.gz \
  && cd flac-1.3.3 \
  && ./autogen.sh \
  && ./configure --enable-shared=no \
  && make \
  && make install \
  && cd .. \
  && git clone https://github.com/bbc/audiowaveform.git \
  && cd audiowaveform \
  && wget https://github.com/google/googletest/archive/release-1.10.0.tar.gz \
  && tar xzf release-1.10.0.tar.gz \
  && ln -s googletest-release-1.10.0/googletest googletest \
  && ln -s googletest-release-1.10.0/googlemock googlemock \
  && mkdir build \
  && cd build \
  && cmake .. \
  && make \
  && make install \
  ;fi

#####################################
# poppler-utils:
#####################################
USER root

ARG INSTALL_POPPLER_UTILS=false

RUN if [ ${INSTALL_POPPLER_UTILS} = true ]; then \
  apk add --update --no-cache poppler-utils antiword \
;fi

# Install AMQP:
ARG INSTALL_AMQP=false

RUN if [ ${INSTALL_AMQP} = true ]; then \
  docker-php-ext-install sockets; \
  apk --update add -q rabbitmq-c rabbitmq-c-dev && \
  if [ $(php -r "echo PHP_MAJOR_VERSION;") = "8" ]; then \
    printf "\n" | pecl install amqp-1.11.0; \
  else \
    printf "\n" | pecl install amqp; \
  fi && \
    docker-php-ext-enable amqp && \
    apk del -q rabbitmq-c-dev; \
    php -m | grep -oiE '^amqp$' \
  ;fi

# Install Gearman:
ARG INSTALL_GEARMAN=false

RUN if [ ${INSTALL_GEARMAN} = true ]; then \
  sed -i "\$ahttp://dl-cdn.alpinelinux.org/alpine/edge/main" /etc/apk/repositories && \
  sed -i "\$ahttp://dl-cdn.alpinelinux.org/alpine/edge/community" /etc/apk/repositories && \
  sed -i "\$ahttp://dl-cdn.alpinelinux.org/alpine/edge/testing" /etc/apk/repositories && \
  apk --update add php7-gearman && \
  sh -c 'echo "extension=/usr/lib/php7/modules/gearman.so" > /usr/local/etc/php/conf.d/gearman.ini' \
  ;fi

# Install Cassandra drivers:
ARG INSTALL_CASSANDRA=false
RUN if [ ${INSTALL_CASSANDRA} = true ]; then \
  if [ $(php -r "echo PHP_MAJOR_VERSION;") = "8" ]; then \
  echo "PHP Driver for Cassandra is not supported for PHP 8.0."; \
  else \
  apk add --update --no-cache cassandra-cpp-driver libuv gmp \
  && apk add --update --no-cache cassandra-cpp-driver-dev gmp-dev --virtual .build-sec \
  && cd /usr/src \
  && git clone https://github.com/datastax/php-driver.git \
  && cd php-driver/ext \
  && phpize \
  && mkdir -p /usr/src/php-driver/build \
  && cd /usr/src/php-driver/build \
  && ../ext/configure > /dev/null \
  && make clean > /dev/null \
  && make > /dev/null 2>&1 \
  && make install \
  && docker-php-ext-enable cassandra \
  && apk del .build-sec; \
  fi \
  ;fi

# Install Phalcon ext
ARG INSTALL_PHALCON=false
ARG LARADOCK_PHALCON_VERSION
ENV LARADOCK_PHALCON_VERSION ${LARADOCK_PHALCON_VERSION}

RUN if [ $INSTALL_PHALCON = true ]; then \
      apt-get update -yqq \
      && pecl channel-update pecl.php.net \
      && apt-get install -yqq libpcre3-dev; \
      pecl install phalcon-${LARADOCK_PHALCON_VERSION}; \
      docker-php-ext-enable phalcon; \
      php -m | grep -q 'phalcon' \
    ;fi

# Install APCU ext
ARG INSTALL_APCU=false

RUN if [ ${INSTALL_APCU} = true ]; then \
    if [ $(php -r "echo PHP_MAJOR_VERSION;") = "5" ]; then \
        pecl install -a apcu-4.0.11; \
    else \
        pecl install apcu; \
    fi && \
    docker-php-ext-enable apcu \
;fi

ARG INSTALL_GHOSTSCRIPT=false
RUN if [ $INSTALL_GHOSTSCRIPT = true ]; then \
  apk --update add ghostscript \
  ;fi

# Install Redis package:
ARG INSTALL_REDIS=false
RUN if [ ${INSTALL_REDIS} = true ]; then \
  # Install Redis Extension
  if [ $(php -r "echo PHP_MAJOR_VERSION;") = "5" ]; then \
  printf "\n" | pecl install -o -f redis-4.3.0; \
  else \
  printf "\n" | pecl install -o -f redis; \
  fi; \
  rm -rf /tmp/pear; \
  docker-php-ext-enable redis \
  ;fi

###########################################################################
# Swoole EXTENSION
###########################################################################

ARG INSTALL_SWOOLE=false

RUN set -eux; \
  if [ ${INSTALL_SWOOLE} = true ]; then \
    # Install Php Swoole Extension
    if   [ $(php -r "echo PHP_VERSION_ID - PHP_RELEASE_VERSION;") = "50600" ]; then \
      pecl install swoole-2.0.10; \
    elif [ $(php -r "echo PHP_VERSION_ID - PHP_RELEASE_VERSION;") = "70000" ]; then \
      pecl install swoole-4.3.5; \
    elif [ $(php -r "echo PHP_VERSION_ID - PHP_RELEASE_VERSION;") = "70100" ]; then \
      pecl install swoole-4.5.11; \
    elif [ $(php -r "echo PHP_MAJOR_VERSION;") = "7" ]; then \
      pecl install swoole-4.8.12; \
    else \
      pecl install swoole; \
    fi; \
    docker-php-ext-enable swoole; \
    php -m | grep -oiE '^swoole$'; \
  fi

###########################################################################
# xlswriter:
###########################################################################

ARG INSTALL_XLSWRITER=false

RUN set -eux; \
    if [ ${INSTALL_XLSWRITER} = true ]; then \
      # Install Php xlswriter Extension \
      if   [ $(php -r "echo PHP_MAJOR_VERSION;") != "5" ]; then \
          pecl install xlswriter && \
          docker-php-ext-enable xlswriter && \
          php -m | grep -q 'xlswriter'; \
      else \
          echo "PHP Extension for xlswriter is not supported for PHP 5.0"; \
      fi \
    ;fi

###########################################################################
# Taint EXTENSION
###########################################################################

ARG INSTALL_TAINT=false

RUN if [ ${INSTALL_TAINT} = true ]; then \
  # Install Php TAINT Extension
  if [ $(php -r "echo PHP_MAJOR_VERSION;") = "7" ]; then \
  pecl install taint; \
  docker-php-ext-enable taint; \
  php -m | grep -q 'taint'; \
  else \
  echo 'taint not Support'; \
  fi \
  ;fi

###########################################################################
# Imap EXTENSION
###########################################################################

ARG INSTALL_IMAP=false

RUN if [ ${INSTALL_IMAP} = true ]; then \
  apk add --update imap-dev && \
  docker-php-ext-configure imap --with-imap --with-imap-ssl && \
  docker-php-ext-install imap \
  ;fi

###########################################################################
# XMLRPC:
###########################################################################

ARG INSTALL_XMLRPC=false

RUN if [ ${INSTALL_XMLRPC} = true ]; then \
  if [ $(php -r "echo PHP_MAJOR_VERSION;") = "8" ]; then \
  pecl install xmlrpc-1.0.0RC3; \
  docker-php-ext-enable xmlrpc; \
  else \
  docker-php-ext-install xmlrpc; \
  fi; \
  php -m | grep -r 'xmlrpc'; \
  fi

###########################################################################
# PHP Memcached:
###########################################################################

ARG INSTALL_MEMCACHED=false

RUN if [ ${INSTALL_MEMCACHED} = true ]; then \
  apk --update add libmemcached-dev; \
  # Install the php memcached extension
  if [ $(php -r "echo PHP_MAJOR_VERSION;") = "5" ]; then \
  pecl install memcached-2.2.0; \
  else \
  pecl install memcached; \
  fi; \
  docker-php-ext-enable memcached; \
  php -m | grep -r 'memcached'; \
  fi

###########################################################################
# SQL SERVER:
###########################################################################

ARG INSTALL_MSSQL=false

RUN set -eux; \
  if [ ${INSTALL_MSSQL} = true ]; then \
  apk add --update gnupg \
  ###########################################################################
  # Ref from:
  # - https://docs.microsoft.com/en-us/sql/connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server?view=sql-server-ver15#alpine17
  ###########################################################################
  # Add Microsoft repo for Microsoft ODBC Driver 17 for Linux
  # Driver version 17.5 or higher is required for Alpine support.
  # Download the desired package(s)
  && curl -O https://download.microsoft.com/download/e/4/e/e4e67866-dffd-428c-aac7-8d28ddafb39b/msodbcsql17_17.8.1.1-1_amd64.apk \
  # Verify signature, if 'gpg' is missing install it using 'apk add gnupg':
  && curl -O https://download.microsoft.com/download/e/4/e/e4e67866-dffd-428c-aac7-8d28ddafb39b/msodbcsql17_17.8.1.1-1_amd64.sig \
  && curl https://packages.microsoft.com/keys/microsoft.asc  | gpg --import - \
  && gpg --verify msodbcsql17_17.8.1.1-1_amd64.sig msodbcsql17_17.8.1.1-1_amd64.apk \
  # Install the package(s)
  && apk add --allow-untrusted msodbcsql17_17.8.1.1-1_amd64.apk unixodbc-dev \
  && pecl install sqlsrv pdo_sqlsrv \
  # && echo extension=pdo_sqlsrv.so >> `php --ini | grep "Scan for additional .ini files" | sed -e "s|.*:\s*||"`/10_pdo_sqlsrv.ini
  # && echo extension=sqlsrv.so >> `php --ini | grep "Scan for additional .ini files" | sed -e "s|.*:\s*||"`/00_sqlsrv.ini
  && docker-php-ext-enable pdo_sqlsrv sqlsrv \
  && php -m | grep -q 'pdo_sqlsrv' \
  && php -m | grep -q 'sqlsrv' \
  ;fi

###########################################################################
# PHP SSDB:
###########################################################################

USER root

ARG INSTALL_SSDB=false

RUN set -xe; \
  if [ ${INSTALL_SSDB} = true ] && [ $(php -r "echo PHP_MAJOR_VERSION;") != "8" ]; then \
  apk --update add sudo wget && \
  if [ $(php -r "echo PHP_MAJOR_VERSION;") = "7" ]; then \
  curl -L -o /tmp/ssdb-client-php.tar.gz https://github.com/jonnywang/phpssdb/archive/php7.tar.gz; \
  else \
  curl -L -o /tmp/ssdb-client-php.tar.gz https://github.com/jonnywang/phpssdb/archive/master.tar.gz; \
  fi \
  && mkdir -p /tmp/ssdb-client-php \
  && tar -C /tmp/ssdb-client-php -zxvf /tmp/ssdb-client-php.tar.gz --strip 1 \
  && cd /tmp/ssdb-client-php \
  && phpize \
  && ./configure \
  && make \
  && make install \
  && rm /tmp/ssdb-client-php.tar.gz \
  && docker-php-ext-enable ssdb \
  ;fi

###########################################################################
# Intl:
###########################################################################

ARG INSTALL_INTL=false

RUN if [ ${INSTALL_INTL} = true ]; then \
    apk add icu-dev && \
    docker-php-ext-configure intl && \
    docker-php-ext-install intl && \
    docker-php-ext-enable intl \
;fi

############################################################################
## Event:
############################################################################
USER root

ARG INSTALL_EVENT=false

RUN set -eux; \
  if [ ${INSTALL_EVENT} = true ]; then \
      curl -L -o  /tmp/libevent.tar.gz https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz   &&\
      mkdir -p /tmp/libevent-php &&\
      tar -C /tmp/libevent-php -zxvf /tmp/libevent.tar.gz --strip 1 &&\
      cd /tmp/libevent-php &&\
      ./configure --prefix=/usr/local/libevent-2.1.12  &&\
      make &&\
      make install &&\
      rm /tmp/libevent.tar.gz &&\
      docker-php-ext-install sockets  &&\
      curl -L -o /tmp/event.tar.gz http://pecl.php.net/get/event-3.0.6.tgz &&\
      mkdir -p /tmp/event-php &&\
      tar -C /tmp/event-php -zxvf /tmp/event.tar.gz --strip 1 &&\
      cd /tmp/event-php &&\
      phpize &&\
      ./configure  --with-event-libevent-dir=/usr/local/libevent-2.1.12/ &&\
      make &&\
      make install &&\
      rm /tmp/event.tar.gz &&\
      docker-php-ext-enable --ini-name zz-event.ini event &&\
      php -m  | grep -q 'event' \
;fi

#
#--------------------------------------------------------------------------
# Optional Supervisord Configuration
#--------------------------------------------------------------------------
#
# Modify the ./supervisor.conf file to match your App's requirements.
# Make sure you rebuild your container with every change.
#

COPY supervisord.conf /etc/supervisord.conf

ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c",  "/etc/supervisord.conf"]

#
#--------------------------------------------------------------------------
# Optional Software's Installation
#--------------------------------------------------------------------------
#
# If you need to modify this image, feel free to do it right here.
#
# -- Your awesome modifications go here -- #

#
#--------------------------------------------------------------------------
# Check PHP version
#--------------------------------------------------------------------------
#

RUN php -v | head -n 1 | grep -q "PHP ${PHP_VERSION}."

#
#--------------------------------------------------------------------------
# Final Touch
#--------------------------------------------------------------------------
#

# Clean up
RUN rm /var/cache/apk/* \
  && mkdir -p /var/www

WORKDIR /etc/supervisor/conf.d/
```

# 4. Nginx Virtual Host Config 파일 확인

- server_name 설정 변경(.env 참조)
  - $MMOM_SCM_URL : dotenv::MMON_SCM_URL
  - $MMON_SELLER_URL : dotenv::SELLER_URL
  - $MMON_API_URL : dotenv::API_URL
  - $MMON_BACKEND_URL : dotenv::BACKEND_URL

- config/nginx/conf.d/laravel.conf.template

```bash
$ sh 00-gen-nginx-conf.sh #실행 후 laravel.conf 파일 생성
```

- config/nginx/conf.d/laravel.conf 확인
```
server {
  listen 80 default_server;
  listen [::]:80 default_server;
  server_name $MMON_SCM_URL $MMON_SELLER_URL;

  index index.php index.html;

  error_log  /var/log/nginx/scm-error.log;
  access_log /var/log/nginx/scm-access.log;

  root /var/www/scm/public;

  location ~ \.php$ {
      try_files $uri =404;
      fastcgi_split_path_info ^(.+\.php)(/.+)$;
      fastcgi_pass scm:9000;
      fastcgi_index index.php;
      include fastcgi_params;
      fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
      fastcgi_param PATH_INFO $fastcgi_path_info;
  }

  location / {
      try_files $uri $uri/ /index.php?$query_string;
      gzip_static on;
  }
}

server {
  listen 80;
  server_name $MMON_API_URL;

  index index.php index.html;

  error_log  /var/log/nginx/api-error.log;
  access_log /var/log/nginx/api-access.log;

  root /var/www/api/public;

  location ~ \.php$ {
      try_files $uri =404;
      fastcgi_split_path_info ^(.+\.php)(/.+)$;
      fastcgi_pass api:9000;
      fastcgi_index index.php;
      include fastcgi_params;
      fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
      fastcgi_param PATH_INFO $fastcgi_path_info;
  }

  location / {
      try_files $uri $uri/ /index.php?$query_string;
      gzip_static on;
  }
}

server {
  listen 80;
  server_name $MMON_BACKEND_URL;

  index index.php index.html;

  error_log  /var/log/nginx/backend-error.log;
  access_log /var/log/nginx/backend-access.log;

  root /var/www/backend/public;

  location ~ \.php$ {
      try_files $uri =404;
      fastcgi_split_path_info ^(.+\.php)(/.+)$;
      fastcgi_pass backend:9000;
      fastcgi_index index.php;
      include fastcgi_params;
      fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
      fastcgi_param PATH_INFO $fastcgi_path_info;
  }

  location / {
      try_files $uri $uri/ /index.php?$query_string;
      gzip_static on;
  }
}
```

# 5. Mmon Git Repository Clone & install 

- install.sh 실행
  - 각 서비스 GIt Clone 및 Submodule Update
  - docker-compose .env를 통한 docker-compose.yml 및 nginx/conf.d/laravel.conf 도메인 문자열 대체 처리

  ```bash
  $ cd ~/mmon-solution
  $ sh install.sh
  ```

# 6. Env 환경설정 파일 적재 (로컬개발환경 - 개발자 PC 환경)

**각 환경별 .env 파일 저장 및 관리방안 필요** \
**임시 backend 리더에게서 공급**, **.env 내 url 변경**

- .env 파일 복사
  ```bash
  $ cd ~/mmon-solution
  $ cp config/.env.api.local api/.env
  $ cp config/.env.backend.local backend/.env
  $ cp config/.env.scm.local scm/.env
  ```
- .env 파일 수정
    - 각 개발환경에 맞는 url, key 등 설정값 조정

# 7. Mmon 솔루션 Docker Compose Build & Up & PHP Composer install
compose-init.sh 실행 =>  docker compose build && docker compose up -d(데몬) && php Composer install 완료

- docker 서비스 실행
  ```
  $ cd ~/mmon-solution
  $ sh compose-init.sh
  ```
- docker 서비스 확인 및 리스트
  ```
  $ docker compose ps
 
  NAME                           IMAGE                        COMMAND                  SERVICE             CREATED             STATUS                            PORTS
  mmon-docker-std-api-1          laravel-app                  "docker-php-entrypoi…"   api                 9 seconds ago       Up 7 seconds                      0.0.0.0:9001->9000/tcp, :::9001->9000/tcp
  mmon-docker-std-backend-1      laravel-app                  "docker-php-entrypoi…"   backend             9 seconds ago       Up 7 seconds                      0.0.0.0:9002->9000/tcp, :::9002->9000/tcp
  mmon-docker-std-db-1           mysql:8                      "docker-entrypoint.s…"   db                  9 seconds ago       Up 7 seconds (health: starting)   3306/tcp, 33060/tcp
  mmon-docker-std-nginx-1        nginx:alpine                 "/docker-entrypoint.…"   nginx               9 seconds ago       Up 7 seconds                      0.0.0.0:8000->80/tcp, :::8000->80/tcp
  mmon-docker-std-php-worker-1   mmon-docker-std-php-worker   "/usr/bin/supervisor…"   php-worker          9 seconds ago       Up 6 seconds                      
  mmon-docker-std-redis-1        redis:alpine                 "docker-entrypoint.s…"   redis               9 seconds ago       Up 8 seconds (health: starting)   0.0.0.0:6379->6379/tcp, :::6379->6379/tcp
  mmon-docker-std-scm-1          laravel-app                  "docker-php-entrypoi…"   scm                 9 seconds ago       Up 7 seconds                      0.0.0.0:9000->9000/tcp, :::9000->9000/tcp
  ```

# 8. 로컬 브라우저 확인 및 개발 디버깅

1.  로컬 도메인 설정(rupi로 예제 작성) - /etc/hosts 파일 수정
    ```
    $ vim /etc/hosts # windows는 경로 확인
    
    127.0.0.1       localhost
    127.0.0.1       rupi-office 
    127.0.0.1       scm.rupi-local.co.kr seller.rupi-local.co.kr api.rupi-local.co.kr backend.rupi-local.co.kr
    ```
    1.  scm.rupi-local.co.kr: scm 로컬 도메인
    2.  api.rupi-local.co.kr: api 로컬 도메인
    3.  backend.rupi-local.co.kr: backend 로컬 도메인
2.  크롬, 파이어폭스, IE 오픈 => 주소 입력
    1.  http://scm.rupi-local.co.kr:8000
    2.  http://api.rupi-local.co.kr:8000
    3.  http://backend.rupi-local.co.kr:8000

# 9. Mmon 솔루션 관리

```bash
$ cd ~/mmon-solution

# Mmon 솔루션 실행
$ docker-compose up -d

# Mmon 솔루션 중지
$ docker-compose down

# Mmon 솔루션 시작
$ docker-compose start

# Mmon 솔루션 정지
$ docker-compose stop

# Mmon 솔루션 빌드
$ docker-compose build
```
