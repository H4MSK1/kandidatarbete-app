#!/bin/sh

image_name="stresstest_flask_app_benchmark"

docker stop $(docker ps -q --filter ancestor=$image_name)
