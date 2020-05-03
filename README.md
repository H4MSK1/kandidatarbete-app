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

Stress test RAM that uses 75% of memory for 30 seconds:

```
stress-ng --vm 1 --vm-bytes 75% --vm-method all --verify -t 30s -v
```
