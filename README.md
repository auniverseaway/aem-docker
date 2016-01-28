### Requirements
1. Docker ([Docker Toolbox](https://www.docker.com/products/docker-toolbox))
2. A valid license.properties file.
3. AEM_6.1_Quickstart.jar

### Intial Setup
1. [Docker Toolbox](https://www.docker.com/products/docker-toolbox) is the easiest way to get Docker running on OS X and Windows.
2. Download a copy of the AEM jar file, make sure it's named AEM_6.1_Quickstart.jar, and place it in this directory.
3. Get a valid license.properties file and place it in this directory.

### Running the Author and Publisher instances
```bash
docker-compose -p myproject --x-networking up -d
```

#### Notes
* On first run it will build an image.
* Author will be bound to 4502, Publish will be bound to 4503
* license.properties will be mounted on each container at /opt/aem
* The ```-p myproject``` flag makes a docker bridge network named myproject. You can verify this by typing ```docker network ls```.

### Stopping the Author and Publisher instances
```bash
docker-compose -p myproject stop
```

### Troubleshooting
* If you get a message saying ```Cannot connect to the Docker daemon. Is the docker daemon running on this host?``` you can run ```eval "$(docker-machine env default)"``` to connect to your Default VirtualBox VM.