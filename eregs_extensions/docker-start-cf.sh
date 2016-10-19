#!/bin/sh
echo "LOCAL_XML_PATHS = ['/app/input/']" > local_settings.py
./manage.py migrate
eregs pipeline 27 646 https://my-ssp-eregs.fr.cloud.gov/api
