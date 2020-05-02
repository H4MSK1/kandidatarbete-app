docker-compose down --remove-orphans
docker stop $(docker ps -q --filter ancestor=kandidatarbete-app_flask_app)
