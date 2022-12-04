# Laravel Docker Example

## Install

### Install Containers

In the folder with `Dockerfile` and `docker-compose.yml`
add docker `.env` to your root folder

```
DB_DATABASE=laravel
DB_USERNAME=root
```

In the folder with `Dockerfile` and `docker-compose.yml`

```
docker-compose build
docker-compose up -d
```

Access MySQL Container

```
docker exec -it common_mysql8 bash
```

Access PHP Container

```
docker exec -it common_php8 bash
```

### Install Laravel

```
docker exec -it common_php8 bash
```

```
cd /var/www
composer create-project laravel/laravel example 6.x --prefer-dist
```

To configure Laravel add `.env` to the `example` directory

```
CACHE_DRIVER=redis
QUEUE_CONNECTION=redis
SESSION_DRIVER=redis

REDIS_HOST=common_redis
REDIS_PASSWORD=null
REDIS_PORT=6379

DB_CONNECTION=mysql
DB_HOST=common_mysql8
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=root
```

## Configuration

###

### MySQL

Version: mysql:8.0

`deploy/mysql/my.cnf` - MySQL configuration

`deploy/mysql/data` - Local data from MySQL container

### Configure Nginx

Version: nginx:alpine

`deploy/nginx/conf.d/example.conf` - Server configuration

Root to points to public folder (for laravel)

`root /var/www/example/public;`

Replace `example` with the name of your application

### PHP

Version: php:8.0-fpm

### Redis

Version: redis:alpine

### Node JS

Version (in PHP container): 18
