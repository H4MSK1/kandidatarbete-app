# Sample app for conducting benchmarking experiments

Created with Python using Flask Framework

The predefined image name is **kandidatarbete-app_flask_app**

#### Build image

```
docker-compose build --no-cache
```

#### Run single container

```
./start.sh
```

#### Run multiple containers (2)

```
./start_multiple.sh
```

### Stop running containers

```
./stop.sh
```

_Temporary notes_
Stress test CPU using 16 threads for 30 seconds:

```
sysbench --test=cpu --time=30 --threads=16 run
```

Stress test RAM using 16 threads for 30 seconds:

```
sysbench --test=memory --memory-block-size=1K --memory-total-size=6G --num-threads=1 --time=20 run
```
