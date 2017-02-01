#!/usr/bin/env bash

if [ ! -f /var/www/html/data ]; then
    echo "New instalation"
		curl -s http://repository.rainloop.net/installer.php | php
		chown -R apache:apache /var/www/html/
fi

$@
