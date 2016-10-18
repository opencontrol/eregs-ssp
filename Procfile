web: cd ~/app && source .profile.d/python.sh && .heroku/python/bin/python manage.py refresh && .heroku/python/bin/python manage.py collectstatic --noinput && gunicorn atf_eregs.wsgi:application
