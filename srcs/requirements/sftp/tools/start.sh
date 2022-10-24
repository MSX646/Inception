#!/bin/bash
export SFTP_PASS=secure
groupadd sftp && useradd -g sftp -d /wp-data -s /sbin/nologin ${DB_USER}
echo "${DB_USER}:${SFTP_PASS}" | /usr/sbin/chpasswd 
usermod -aG root ${DB_USER}
mkdir -p /wp-data/${DB_USER}/upload
chown -R root:sftp /wp-data/${DB_USER}/
chown -R ${DB_USER}:sftp /wp-data/${DB_USER}/upload/
echo 'Match Group sftp' >> /etc/ssh/sshd_config
echo 'ChrootDirectory /wp-data/%u' >> /etc/ssh/sshd_config
echo 'ForceCommand internal-sftp' >> /etc/ssh/sshd_config

/usr/sbin/sshd -D
