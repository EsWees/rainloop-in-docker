#!/usr/bin/env bash

if [ ! -d /var/www/html/data ]; then
    echo "New instalation"
		curl -s http://repository.rainloop.net/installer.php | php
		chown -R apache:apache /var/www/html/
fi
rm -rf /run/httpd/*.pid || true
$@
