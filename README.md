# Dockerized Basic Node.js Application

This repository demonstrates how to Dockerize a basic Node.js application.
Follow the instructions below to build, run, and manage the Docker container.

## Build the Docker Image

- To build the Docker image, use the following command:

```bash
docker build -t image_name:tag_name .
```

- To build the Docker image, use the following command:

```bash
docker container run -d -p 8003:8003 image_name:tag_name
```

- To view the list of running containers:

```bash
docker container ls
```

- To stop a running container with the container ID:

```bash
docker container stop first_3_digit_of_the_container
```
