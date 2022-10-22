from debian:buster

run apt update && apt install -y nginx
expose 443
copy ./conf/nginx.conf /etc/nginx/conf.d/
copy ./tools/* /etc/nginx/ssl/

cmd ["nginx", "-g", "daemon off;"]
