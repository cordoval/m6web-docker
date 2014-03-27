#!/bin/bash
docker run -t \ -p 8000:80 \ -v $(pwd):/var/www \ m6web/symfony2
