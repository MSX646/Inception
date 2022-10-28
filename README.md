# Inception
This project consists in having to set up a small infrastructure composed of different services under specific rules: 
- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only
- A Docker container that contains WordPress + php-fpm
- A Docker container that contains MariaDB
- A volume that contains WordPress database
- A second volume that contains WordPress website files
- A docker-network that establishes the connection between your containers
- And bonus services (Redis, Adminer, Portainer, SFTP, simple web page)
Here is an diagram of the expected result
![Снимок](https://user-images.githubusercontent.com/50179013/198564264-7ff0a8cd-40b6-416d-9a7d-76adb754630d.JPG)
