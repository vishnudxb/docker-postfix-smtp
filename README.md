# docker-postfix-smtp
Setup Postfix and use Gmail as the SMTP

*You can pull this image from the docker hub*

```
docker pull vishnunair/docker-postfix-smtp:latest

```

Here you need to pass two environment variables
```
gmail_username 
gmail_password
```

You can run the container like

```
docker run -p 587:587 -e gmail_username='email@gmail.com' -e gmail_password='mygmailpassword' -it vishnunair/docker-postfix-smtp:latest bash

And execute the script postfix.sh like below:-

root@c26c8b811f7b:/# . /bin/postfix.sh

```

You can test it by running

```
root@c26c8b811f7b:/# echo "postfix using gmail smtp" | mail -s "Postfix in Docker" myemail@anyemailprovider.com

```
