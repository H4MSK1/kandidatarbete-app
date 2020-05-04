# Sample app for conducting benchmarking experiments

Created with Python using Flask Framework

The predefined image name is **stresstest_flask_app_benchmark**.

The containers are configured to occupy 2GB of RAM and 2 CPU cores by default.

To monitor Container stats, run `docker stats`.

### Build image

This build the image `stresstest_flask_app_benchmark` and tags it as `latest`.

```
./build.sh
```

### Run a single container instance

```
./start.sh
```

### Run multiple containers (2 instances)

```
./start_multiple.sh
```

### Stop running containers

```
./stop.sh
```

### Stress test CPU

#### Docker containers

```
./stress_cpu.sh
```

#### Host

```
./stress_cpu.sh host
```

### Stress test RAM

#### Docker containers

```
./stress_ram.sh
```

#### Host

```
./stress_ram.sh host
```

### Testing requests with ApacheBench (ab)

Testing container 1

```
ab -l -r -n 100 -c 10 -k http://localhost:6001/
```

Testing container 2

```
ab -l -r -n 100 -c 10 -k http://localhost:6002/
```

### Scenario 1 ApacheBench intervals

1.

```
ab -l -r -n 100 -c 1 -k http://localhost:6001/
```

2.

```
ab -l -r -n 100 -c 10 -k http://localhost:6001/
```

3.

```
ab -l -r -n 100 -c 25 -k http://localhost:6001/
```

4.

```
ab -l -r -n 100 -c 50 -k http://localhost:6001/
```
