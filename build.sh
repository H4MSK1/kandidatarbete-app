#!/bin/sh

image_name="stresstest_flask_app_benchmark"
docker build --no-cache -t $image_name:latest .
