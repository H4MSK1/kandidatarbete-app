#!/bin/sh

image_name="stresstest_flask_app_benchmark"
ram_limit="2g"
cpu_core_limit=2

docker run -d -p 6001:5000 --memory=$ram_limit --cpus $cpu_core_limit $image_name
echo "Exposed container 1 via port 6001"

docker run -d -p 6002:5000 --memory=$ram_limit --cpus $cpu_core_limit $image_name
echo "Exposed container 2 via port 6002"
