# \_boilerplate-node-mariadb-docker

Boilerplate to start a development project using Node, MariaDB and Docker.

**Versions:**

- Node 22
- MariaDB 11.4.3

### Setup

1. Clone the project:

```sh
$ git clone https://github.com/lucasbaldassari/_boilerplate-node-mariadb-docker.git
```

2. Rename the folder for your project:

```sh
$ mv _boilerplate-node-mariadb-docker YOUR_PROJECT_FOLDER_NAME_HERE
```

3. Enter the folder:

```sh
$ cd YOUR_PROJECT_FOLDER_NAME_HERE
```

4. Give execute permission to the following file:

```sh
$ chmod +x setup.sh
```

5. Set the variables that are at the top of the `setup.sh` according to your needs.

6. Run the `setup.sh` file:

```sh
$ ./setup.sh
```

7. Done! The boilerplate is configured and Docker is ready to run!

### Initialize all containers (only first run)

```sh
$ ./.docker/init.sh
```

### Get into server's container shell

```sh
$ ./.docker/bash.sh
```

### Stop all containers (once initialized)

```sh
$ ./.docker/stop.sh
```

### Resume all containers (once initialized)

```sh
$ ./.docker/start.sh
```

### Kill all containers and remove the database folder

```sh
$ ./.docker/destroy.sh
```

### Inspect network IP

```sh
$ ./.docker/network.sh
```

### Debug NestJS in Visual Studio Code

1. Change the debug script in the `package.json` file to:

```json
"scripts": {
  "start:debug": "nest start --debug 0.0.0.0:9229 --watch",
}
```

2. Map the debug port for server container in `.docker/compose.yml`:

```yml
services:
  server:
    ports:
      - "9229:9229" # Add this line
```

3. Use the following settings in the `.vscode/launch.json`:

```json
{
  "name": "NestJS Debug With Docker",
  "type": "node",
  "request": "attach",
  "port": 9229,
  "remoteRoot": "/app",
  "restart": true
}
```
