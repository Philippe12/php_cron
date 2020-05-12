FROM xordiv/docker-alpine-cron:latest

# https://github.com/codecasts/php-alpine/blob/master/README.md

ADD https://dl.bintray.com/php-alpine/key/php-alpine.rsa.pub /etc/apk/keys/php-alpine.rsa.pub

RUN apk --update add ca-certificates && \
    echo "https://dl.bintray.com/php-alpine/v3.11/php-7.4" >> /etc/apk/repositories

RUN apk add --update \
    php \
    php-sodium	 \
    php-bcmath	 \
    php-bz2	 \
    php-calendar	 \
    php-ctype	 \
    php-curl	 \
    php-dba	 \
    php-dom	 \
    php-embed	 \
    php-enchant	 \
    php-exif	 \
    php-ftp	 \
    php-gd	 \
    php-gettext	 \
    php-gmp	 \
    php-iconv	 \
    php-imap	 \
    php-json	 \
    php-ldap	 \
    php-litespeed	 \
    php-mbstring	 \
    php-mysqli	 \
    php-mysqlnd	 \
    php-odbc	 \
    php-opcache	 \
    php-openssl	 \
    php-pcntl	 \
    php-pdo	 \
    php-pdo_dblib	 \
    php-pdo_mysql	 \
    php-pdo_pgsql	 \
    php-pdo_sqlite	 \
    php-pear	 \
    php-pgsql	 \
    php-phar	 \
    php-phpdbg	 \
    php-posix	 \
    php-pspell	 \
    php-session	 \
    php-shmop	 \
    php-snmp	 \
    php-soap	 \
    php-sockets	 \
    php-sqlite3	 \
    php-sysvmsg	 \
    php-sysvsem	 \
    php-tidy	 \
    php-xml	 \
    php-xmlreader	 \
    php-xmlrpc	 \
    php-xsl	 \
    php-zip	 \
    php-zlib	 \
    php-apcu	 \
    php-ast	 \
    php-memcached	 \
    php-mongodb	 \
    php-msgpack	 \
    php-psr	 \
    php-redis	 \
    php-swoole	 \
    php-timecop	 \
    php-scalar_objects	 \
    php-secp256k1	 \
    argon2	 \
    libargon2

RUN  php7 -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php7 composer-setup.php \
    && php7 -r "unlink('composer-setup.php');"
