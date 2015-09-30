#!/bin/bash
sed -i 's/$gmail_username/'"$gmail_username"'/' /etc/postfix/sasl_passwd
sed -i 's/$gmail_password/'"$gmail_password"'/' /etc/postfix/sasl_passwd
chmod 400 /etc/postfix/sasl_passwd
postmap /etc/postfix/sasl_passwd
cp -rf /etc/ssl/certs/Thawte_Premium_Server_CA.pem /etc/postfix/cacert.pem
postfix start && /etc/init.d/postfix restart
