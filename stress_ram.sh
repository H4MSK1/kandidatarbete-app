#!/bin/sh

image_name="stresstest_flask_app_benchmark"
stress_load_capacity=50
stress_time_seconds=30
stress_cmd="stress-ng --vm 1 --vm-bytes ${stress_load_capacity}% --vm-method all --verify -t ${stress_time_seconds}s"

echo "-------------------------------------------------------"
echo "Stress testing RAM at ${stress_load_capacity}% load capacity for $stress_time_seconds seconds"
echo "-------------------------------------------------------"

if [ $# -eq 0 ]; then
  echo "No arguments given, using default option to stress test Docker containers"
  echo ""
  echo "Executing command (${stress_cmd}) in each container"
  echo ""

  for container in `docker ps -q --filter ancestor=$image_name`; do 
    docker inspect --format='{{.Name}}' $container
    docker exec $container $stress_cmd &
  done
else
  echo "Executing command (${stress_cmd}) on host computer"
  echo ""
  eval $stress_cmd
fi

exit 0
