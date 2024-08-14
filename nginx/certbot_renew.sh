docker run -it --rm --name certbot \
-v /etc/letsencrypt:/etc/letsencrypt \
-v /var/www/certbot:/var/www/certbot \
certbot/certbot renew && docker-compose restart nginx
