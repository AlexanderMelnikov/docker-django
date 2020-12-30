#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Postgres not yet run"

    # Проверяем доступность хоста и порта
    while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
      sleep 0.1
    done

    echo "Postgres did run"
fi
# Удаляем все старые данные
python manage.py flush --no-input
# Выполняем миграции
python manage.py migrate

exec "$@"
