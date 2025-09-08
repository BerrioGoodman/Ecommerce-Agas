#!/bin/bash
set -e

echo "=> Esperando a la base de datos..."
until nc -z "$POSTGRES_HOST" "$POSTGRES_PORT"; do
  sleep 1
done
echo "DB lista ✅"

echo "=> Aplicando migraciones..."
python manage.py migrate --noinput

if [ -n "$DJANGO_SUPERUSER_USERNAME" ] && [ -n "$DJANGO_SUPERUSER_PASSWORD" ]; then
  echo "=> Creando superuser (si no existe)..."
  python manage.py shell <<EOF
from django.contrib.auth import get_user_model
User = get_user_model()
u = "${DJANGO_SUPERUSER_USERNAME}"
if not User.objects.filter(username=u).exists():
    User.objects.create_superuser(
        username=u,
        email="${DJANGO_SUPERUSER_EMAIL}",
        password="${DJANGO_SUPERUSER_PASSWORD}"
    )
EOF
fi

echo "=> Iniciando servidor..."
exec "$@"
