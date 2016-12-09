FROM netroby/docker-php-fpm
RUN apt install -y wget git; \
    cd /usr/local/bin; \
   wget -c https://phar.phpunit.de/phpunit.phar; \
   wget -c https://getcomposer.org/composer.phar; \
   chmod a+x *.phar; \
   ln -s /usr/local/bin/phpunit.phar /usr/bin/phpunit; \
   ln -s /usr/local/bin/composer.phar /usr/bin/composer; 
