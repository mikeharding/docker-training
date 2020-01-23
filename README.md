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
