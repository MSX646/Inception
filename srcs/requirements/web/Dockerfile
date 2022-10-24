from debian:buster

run apt update && apt install -y nginx vim
expose 80
copy ./conf/* /var/www/
run mv /var/www/nginx.conf /etc/nginx/sites-available/default

cmd ["nginx", "-g", "daemon off;"]
