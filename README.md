# HelloWorld

Status of Last Build:<br>
<img src="https://github.com/kropivnitskiy-b/HelloWorld/workflows/Publish%20Docker/badge.svg?branch=main"><br>

Simple project which:

1. Contain a Dockerfile of nginx builds with pages:
/ - "Hello World";
/auth - "Hello World $USERNAME" with basic authentication
Pass and username set by ENV HTPASSWD in Dockerfile

2. GiHub Action builds and publishing Docker image to Docker Hub

3. Contain an ansible-playbook for installing Docker and deploy the Docker image. 
Default Usernames and Passwords for basic authentication is admin:admin and user:user.
But they can be changed in the "htpasswd_users" variable in the file HelloWorld/Ansible/run-docker-image/defaults/main.yml
