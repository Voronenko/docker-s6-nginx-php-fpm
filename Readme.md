Old
RUN docker-php-ext-configure gd
--with-png-dir=/usr/include/
--with-jpeg-dir=/usr/include/
--with-freetype-dir=/usr/include/

New
RUN docker-php-ext-configure gd
--with-png=/usr/include/
--with-jpeg=/usr/include/
--with-freetype=/usr/include/
