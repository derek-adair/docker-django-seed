docker-compose run --rm web django-admin startproject $1 . \
    && docker-compose run --rm web python ./manage.py migrate \
    && docker-compose run --rm web sudo chown -R $(whoami):$(whoami)
