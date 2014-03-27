#!/bin/bash
cd /var/www
composer install
app/console doctrine:schema:update --force
exec svscan /srv/services
