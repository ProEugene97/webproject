sudo /etc/init.d/nginx restart
gunicorn -b 0.0.0.0:8000 -w 4 ask.wsgi
