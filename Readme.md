# s6 based nginx/php-fpm based container for local development environment

On a board:  nginx, php-fpm, xdebug activated.

Additional utilities:

* wait https://github.com/ufoscout/docker-compose-wait/

* ep https://github.com/kreuzwerker/envplate

Container also has pre-created user ubuntu with id 1000 to nicely match your local user, in case if you were 
planning to map volumes from local system.


Build notes:

For php < 7.4 you need to adjust gd switches to:

```
RUN docker-php-ext-configure gd
--with-png-dir=/usr/include/
--with-jpeg-dir=/usr/include/
--with-freetype-dir=/usr/include/
```

For php 7.4 and above, just

```
RUN docker-php-ext-configure gd
--with-png=/usr/include/
--with-jpeg=/usr/include/
--with-freetype=/usr/include/
```

Image has pre-configured debugger for use with https://code.visualstudio.com/docs/remote/containers
confirmed to work as a charm with Felix Becker's PHP XDebug extension

https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug
