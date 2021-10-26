VER='0.1'
DOCKER_IMAGE='user_name/project_name:'$(VER)

################ 

docker-build:
	docker build -t $(DOCKER_IMAGE) -f docker/Dockerfile .

docker-run:
	docker run --gpus 1 -it --rm --shm-size 100G -v $(PWD)/workspace:/workspace $(DOCKER_IMAGE) /bin/bash

################ 

download:
	echo "This command will summarize the commands to download the files."



train: 
	docker run --gpus 1 -it --rm --shm-size 100G -v $(PWD)/workspace:/workspace $(DOCKER_IMAGE) python hello.py
