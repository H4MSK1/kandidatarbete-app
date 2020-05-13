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

### Stress test (CPU and RAM)

#### Docker containers

```
./stress_containers.sh
```

#### Virtual machine

```
./stress_vm.sh
```

### Scenario 1 experiments

`./scenario_1.sh <port number to the python app>`

Testing instance 1

```
./scenario_1.sh 6001
```

Testing instance 2

```
./scenario_1.sh 6002
```
