FROM octohost/nginx

RUN add-apt-repository -y ppa:ondrej/php5-oldstable
RUN apt-get update

RUN apt-get -y install php5-fpm php5-mysql php-apc php5-imagick php5-imap php5-mcrypt

RUN echo "<?php phpinfo(); ?>" > /srv/www/phpinfo.php

EXPOSE 80

CMD service php5-fpm start && nginx