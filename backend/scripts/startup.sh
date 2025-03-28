#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT juan_tst_2803_dev_151304.wsgi:application
