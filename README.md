# Deploying website on nginx container with ssl
## Requirements 
- docker, certbot, nginx 
## Issuing ssl certificate using certbot
```
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install python2-certbot-nginx.noarch -y
certbot certonly --webroot -w project_directory -d domain_name
```
## Building container image
```
docker build -t nginx_ssl .
```
## Launching nginx container
```
docker run -d -p 80:80 -p 443:443 nginx_ssl
```
## **NOTE**
- make sure post 80 and 443 are not in use in host machine
- make sure port 80 and 443 are open in Security Group 


