# Docker Training

## Dockerfile Build

### Pull the base Centos 7 image from Docker Hub
`docker pull centos:centos7.7.1908`

### List of commands needed in Dockerfile
> See the content of Dockerfile

### Delete the old image
`docker rmi mhardingmtl/centos7`  
> No need to delete it if you rebuild it.

### Build the Image
`docker build -t mhardingmtl/centos7 .`

### Run the container
`docker run --rm -it -p 8888:8888 mhardingmtl/centos7 bash`

### Source .bash_profile
`cd /home/snowman`
`source .bash_profile`

~/_Projects/2020.01.21_docker-training
▶ docker images
REPOSITORY            TAG                 IMAGE ID            CREATED              SIZE
mhardingmtl/centos7   latest              7335ba989eb1        12 seconds ago       682MB
<none>                <none>              667e50cf42db        About a minute ago   682MB
centos                centos7.7.1908      08d05d1d5859        2 months ago         204MB





http://172.17.0.2:8888/?token=a10b474fd8efa72ba9fc0e85821a860aa25c7669e917f13e



http://172.17.0.2:8888/?token=d2c0f165c26d7c2ad161ca7a276c6048b77a2a7b51199e35