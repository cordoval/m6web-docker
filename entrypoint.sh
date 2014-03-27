#!/bin/bash
cd /var/www
composer install
exec svscan /srv/services
