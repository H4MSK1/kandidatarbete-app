#!/bin/sh

ram_limit="2g"
cpu_core_limit=2

docker run -d -p 6001:5000 --memory=$ram_limit --cpus $cpu_core_limit stresstest_flask_app_benchmark
echo "Exposed container 1 via port 6001"
