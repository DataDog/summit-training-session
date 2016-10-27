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
7.  Run the Redis docker image (Find out more about this image on https://hub.docker.com/_/redis/) using the command: `docker run --name dd-redis -d redis`. The Redis docker container is now running.

Although Datadog and Redis are running in Docker, the agent is not collecting any metrics about the Redis server. To enable an integration, like Redis, we need to add the configuration file to the container.

1.  Stop the Agent container and then delete it using the following commands: `docker stop dd-agent;docker rm dd-agent`
2.  Create a new directory called `dd-conf`. 
3.  Add a file named `redisdb.yaml` to that directory. Add the contents of **redisdb.yaml.example** at https://github.com/DataDog/dd-agent/tree/master/conf.d to that file
4.  Run the following command from the parent of **dd-conf** (replacing your api key and full path name of your dd-conf directory in the appropriate spot): 
    
    ```
    docker run -d --name dd-agent \
      -v /var/run/docker.sock:/var/run/docker.sock:ro \
      -v /proc/:/host/proc/:ro \
      -v /sys/fs/cgroup/:/host/sys/fs/cgroup:ro \
      -v {full path name}dd-conf:/conf.d:ro \
      -e API_KEY={your_api_key_here} \
      datadog/docker-dd-agent
    ```
5.  To verify that the agent is collecting Redis metrics, run: `docker exec -it dd-agent /etc/init.d/datadog-agent info`

Unless you are already a Docker expert and caught the potential problem, you should see an error here connecting to Redis. You are connecting to Redis on the localhost, but you need to enter the IP address of the Docker container.

1.  Run `docker network inspect bridge` to find the **IPv4Address** of the **dd-redis** container.  
2.  Replace **localhost** with the IP Address you just found in **dd-conf/redisdb.yaml**.
3.  Stop and delete the container (`docker stop dd-agent; docker rm dd-agent`) then run the `docker run` command again. 
4.  Run `docker exec -it dd-agent /etc/init.d/datadog-agent info` to see if the agent is collecting Redis metrics. If you don't see any checks running, give it a few seconds to start and try the command again. 

Once you have the Redis container running, choose another local integration from the [Integration documentation](http://docs.datadoghq.com/integrations/). Start the container using an image found on the [Docker Hub](https://hub.docker.com/) and create a configuration. At the end of this session, lets talk about how you did it.
