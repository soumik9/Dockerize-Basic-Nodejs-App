# Dockerized Basic Node.js Application

This repository demonstrates how to Dockerize a basic Node.js application.
Follow the instructions below to build, run, and manage the Docker container.

## Basic Docker

- To build the Docker image, use the following command:

```bash
docker build -t image_name:tag_name .
```

- To view all builded image, use the following command:

```bash
docker image ls
```

- To build the Docker image, use the following command:

```bash
docker container run -d -p 8003:8003 image_name:tag_name
```

NB: Here after `:` the port is set to the application port & before `:` the port on which the application port will be forwarded.

- To view the list of running containers:

```bash
docker container ls
```

```bash
docker ps
```

```bash
docker ps -a
```

- To stop a running container with the container ID:

```bash
docker container stop first_3_digit_of_the_container
```

---

## Removing Dokcer Image/Container

- To delete a container with the container ID:

```bash
docker rm first_3_digit_of_the_container -f
```

NB: Here `-f` defines that delete the app forcefully.

- To delete a image with the image ID:

```bash
docker rmi first_3_digit_of_the_container -f
```

NB: Here `-f` defines that delete the app forcefully.

---

## File Systems

- To view file system of a app:

```bash
docker exec -it container_first_three_digit_id bash
```

- To exit from file system of a app:

```bash
exit
```

---

## Sync code with Bind Mounts

- To sync files in docker with local file system when building the app:

*: Windows Shell

```bash
docker container run -v %cd%:/app -d -p 8003:8003 image_name:tag_name
```

*: Windows PowerShell / MAC / Linux

```bash
docker container run -v ${pwd}:/app -d -p 8003:8003 image_name:tag_name
```

NB: Here `%cd%` | `${pwd}` define the local directory path of the application. And, after `:` the `/app` define the docker `WORKDIR`. And, make sure you have installed nodemon for development purpose & don't forger to add `-L` flag on the command `"dev": "nodemon -L index.js"`. Here `-L` flag defines `--legacy-watch` because the file systems are different so it detect the file system event and when file changes triger the nodemon event.

- After sync with above command, if you delete `node_modules` it also sync to docker container, to prevent `syncing` node_modules from local to docker app follow the command:

```bash
docker container run -v %cd%:/app -v /app/node_modules -d -p 8003:8003 image_name:tag_name
```

NB: `-v /app/node_modules` adding this it will create another volume & prevent syncing node_modules on the bind mount.

---

## Logs

- To view the logs of a app:

```bash
docker logs container_first_three_digit_id
```

- To view what in .env, first open docker file system with `docker exec -it container_first_three_digit_id bash` then:

```bash
printenv
```

---

## Read Only Bind Mounts

- To view the logs of a app:

*: Windows PowerShell / MAC / Linux

```bash
docker container run -v ${pwd}:/app:ro -d -p 8003:8003 image_name:tag_name
```

---

## Environment Variables in Docker

- To view the logs of a app:

*: Windows PowerShell / MAC / Linux

```bash
docker container run -v ${pwd}:/app:ro -d -p 8003:8004 -e PORT=8004 image_name:tag_name
```

NB: Here, `-e` refer that `PORT` is a environtment variable.

---
