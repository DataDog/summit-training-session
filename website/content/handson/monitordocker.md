---
title: "Monitoring Docker"
type: "handson"
date: "2016-10-17T08:47:25-04:00"
weight: 6
duration: 40 minutes
description: Add Docker to the Monitoring mix
---

This exercise requires Docker to be installed somewhere. You could do this on your laptop, on the Vagrant box you created earlier, or on any machine you can remotely access. If installing for the first time on your laptop, see https://www.docker.com/products/overview for links to the installers for your platform.

1.  Navigate to the Agent Installation page in the Datadog application (https://app.datadoghq.com/account/settings#agent/docker).
2.  Select **Docker** and copy the first command. Run it where ever you have Docker installed.
3.  You now have the Datadog agent running on your Docker machine. 
4.  Run `docker exec -it dd-agent bash` to login to a bash shell on that container.
5.  You can now run any of the Datadog commands you have on Linux. For instance, run `/etc/init.d/datadog-agent info`. 
6.  You can try other commands, or type `exit` to return to your host machine.
1.  Start a Redis container by running the following command: `docker run --name ad-redis redis`.
1.  Run the Datadog Agent Info command. Also run the Agent's configcheck command. Is Redis being monitored?
1.  Create a new file called `Dockerfile` in a new directory called `redisdocker`. Edit the file and add a single line

    ```
    FROM redis
    ```
1.  Build the new image using the following command: `docker build -t redisdocker .`
7.  Run the redisdocker image using the command: `docker run --name dd-redis -d redisdocker`. The Redis docker container based on our modified image is now running.
8.  Run the Datadog Agent Info command again. Is the new database being monitored?

Let's switch over to using docker-compose.

1.  Create a docker-compose.yaml file with the following contents:

    ```
    version: "3"
    networks:
      main:

    services:
      datadog:
        image: datadog/docker-dd-agent
        volumes:
          - /var/run/docker.sock:/var/run/docker.sock
          - /proc:/host/proc:ro
          - /sys/fs/cgroup:/host/sys/fs/cgroup:ro
        environment:
          - API_KEY
          - SD_BACKEND=docker
        networks:
          - main

      frontendredis:
        image: redis
        networks:
          - main

      backendredis:
        build: .
        networks:
          - main
      ```
1.  Run the datadog info command (`docker-compose exec datadog /etc/init.d/datadog-agent info`). How many redis instances are being monitored.
1.  Modify the backendredis service to show the following:

    ```
    backendredis:
        build: .
        networks:
          - main
        labels:
          com.datadoghq.ad.check_names: '["redisdb"]'
          com.datadoghq.ad.init_configs: '[{}]'
          com.datadoghq.ad.instances: '[{"host":"%%host%%", "port": "%%port%%"}]'
    ```

1.  Stop and remove the containers then run `docker-compose up` again. 
1.  Run the Datadog Agent Info command again, how many instances are being monitored?


Let's create the same environment in Kubernetes.  


Once you have the Redis container running, choose another local integration from the [Integration documentation](http://docs.datadoghq.com/integrations/). Start the container using an image found on the [Docker Hub](https://hub.docker.com/) and create a configuration. At the end of this session, lets talk about how you did it.
