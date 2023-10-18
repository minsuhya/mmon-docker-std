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
MMON_SCM_URL=rupi-scm.mmonstar.co.kr
MMON_SELLER_URL=rupi-seller.mmonstar.co.kr
MMON_API_URL=rupi-api.mmonstar.co.kr
MMON_BACKEND_URL=rupi-backend.mmonstar.co.kr

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
    image: mmon-lara-app
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
    image: mmon-lara-app
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
    image: mmon-lara-app
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
    image: mmon-lara-worker
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

# Install PHP extensions
RUN docker-php-ext-install intl pdo_mysql mysqli opcache mbstring exif pcntl bcmath gd zip

RUN pecl channel-update pecl.php.net \
    && pecl install redis \
    && pecl install imagick \
    && pecl install rdkafka \
    && docker-php-ext-enable redis \
    && docker-php-ext-enable imagick \
    && docker-php-ext-enable rdkafka

# Clean up
RUN rm /var/cache/apk/* \
    && rm -rf /tmp/pear \
    && mkdir -p /var/www

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
    127.0.0.1       rupi-scm.mmonstar.co.kr rupi-seller.mmonstar.co.kr rupi-api.mmonstar.co.kr rupi-backend.mmonstar.co.kr
    ```
    1.  rupi-scm.mmonstar.co.kr: scm 로컬 도메인
    2.  rupi-api.mmonstar.co.kr: api 로컬 도메인
    3.  rupi-backend.mmonstar.co.kr: backend 로컬 도메인
2.  크롬, 파이어폭스, IE 오픈 => 주소 입력
    1.  http://rupi-scm.mmonstar.co.kr:8000
    2.  http://rupi-api.mmonstar.co.kr:8000
    3.  http://rupi-backend.mmonstar.co.kr:8000

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
