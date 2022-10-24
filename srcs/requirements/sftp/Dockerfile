from debian:buster

expose 22
arg DB_USER SFTP_PASS

run apt update && apt install -y openssh-server && mkdir /wp-data && chmod 701 /wp-data
copy ./tools/start.sh .
run chmod +x start.sh && mkdir /run/sshd

entrypoint ./start.sh
#cmd ["/usr/sbin/sshd", "-D"]
