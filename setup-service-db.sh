if [ -z "$1" ]; then
  echo "Missing database name"
  exit 1
fi

docker-compose exec -u postgres db psql -c "CREATE USER \"$1_user\"" -c "ALTER USER $1_user WITH PASSWORD 'testpass'" -c "CREATE DATABASE \"$1\"" -c "ALTER DATABASE $1 OWNER TO \"$1_user\""