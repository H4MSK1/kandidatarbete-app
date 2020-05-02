docker run -d -p 6001:5000 kandidatarbete-app_flask_app
echo "Exposed container 1 via port 6001"

docker run -d -p 6002:5000 kandidatarbete-app_flask_app
echo "Exposed container 2 via port 6002"
