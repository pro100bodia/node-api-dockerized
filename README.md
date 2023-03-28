# Simple dockerized Node.js app

## Building an image from Dockerfile
Use docker build PATH_TO_YOUR_DIRECTORY to build an image. For convenience, you can add a tag to recognize it.

For example:

`docker build ~/workspace/node-api-dockerized -t node-api-dockerized`

Check with `docker images`, and you will see your node-api-dockerized image in the list.

## Running container with mapped port, cpu and memory limits
`docker run -it -p 80:8080 -c 2 -m 134217728 --name node-api node-api-dockerized`

In the example above we use:
- `-it` for interactive mode and simulated TTY
- `-p` to map 80 host port to 8080 internal port
- `-c` to allocate 2 cpus
- `-m` to allocate 1 Gib of memory
- `--name` to define a human-readable name for new container

To stop the container, just type:

`docker stop node-api`

## Pushing the image to Docker Hub
First we need to log in to the docker hub with:

`docker login docker.io`

Now our credentials are set.
The second step is to tag your image with `docker.io/username/image-name:tag`.

`docker tag node-api-dockerized:latest docker.io/bodiagoogle/node-api-dockerized:latest`

Now you can simply push with:

`docker push docker.io/bodiagoogle/node-api-dockerized:latest`
