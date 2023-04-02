FROM alpine
RUN apk update && apk upgrade && apk add \
	\
	nginx \
	php81 \
	php81-pdo_dblib \
	php81-embed \
	php81-enchant \
	php81-pecl-redis \
	php81-pecl-apcu \
	php81-posix \
	php81-pecl-protobuf \
	php81-pecl-uploadprogress \
	php81-dba \
	php81-pecl-xhprof \
	php81-bz2 \
	php81-pdo \
	php81-pecl-msgpack \
	php81-pecl-mongodb \
	php81-pcntl \
	php81-pdo_mysql \
	php81-fileinfo \
	php81-soap \
	php81-pecl-imagick \
	php81-sodium \
	php81-pecl-memcache \
	php81-opcache \
	php81-pdo_odbc \
	php81-pecl-amqp \
	php81-common \
	php81-pecl-igbinary \
	php81-exif \
	php81-mbstring \
	php81-pdo_pgsql \
	php81-curl \
	php81-pecl-rdkafka \
	php81-pecl-uploadprogress-doc \
	php81-litespeed \
	php81-pspell \
	php81-intl \
	php81-ffi \
	php81-pecl-xhprof-assets \
	php81-iconv \
	php81-xsl \
	php81-pecl-event \
	php81-xml \
	php81-mysqli \
	php81-odbc \
	php81-pear \
	php81-mysqlnd \
	php81-dev \
	php81-pecl-ssh2 \
	php81-pecl-vips \
	php81-tokenizer \
	php81-pecl-imagick-dev \
	php81-zip \
	php81-pdo_sqlite \
	php81-pgsql \
	php81-pecl-swoole \
	php81-calendar \
	php81-pecl-memcached \
	php81-gettext \
	php81-pecl-xdebug \
	php81-pecl-swoole-dev \
	php81-ctype \
	php81-sqlite3 \
	php81-phpdbg \
	php81-sysvsem \
	php81-sysvshm \
	php81-shmop \
	php81-tidy \
	php81-pecl-ast \
	php81-pecl-zstd \
	php81-brotli \
	php81-pecl-mailparse \
	php81-sysvmsg \
	php81-pecl-uuid \
	php81-fpm \
	php81-gmp \
	php81-imap \
	php81-simplexml \
	php81-sockets \
	php81-openssl \
	php81-doc \
	php81-pecl-yaml \
	php81-cgi \
	php81-bcmath \
	php81-xmlwriter \
	php81-snmp \
	php81-session \
	php81-gd \
	php81-pecl-psr \
	php81-pecl-maxminddb \
	php81-ldap \
	php81-dom \
	php81-phar \
	php81-ftp \
	php81-xmlreader && \
	rm /var/cache/apk/* && \
	\
	ln -sf /dev/stdout /var/log/nginx/access.log && \
	ln -sf /dev/stderr /var/log/nginx/error.log && \
	rm -r /var/www/localhost && mkdir /var/www/html
	
COPY default.conf /etc/nginx/http.d/
COPY nginx-entrypoint.sh /opt/
WORKDIR /root
EXPOSE 80
ENTRYPOINT ["/opt/nginx-entrypoint.sh"]
