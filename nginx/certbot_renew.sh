docker run -it --rm --name certbot \
-v /etc/letsencrypt:/etc/letsencrypt \
-v /var/www/certbot:/var/www/certbot \
certbot/certbot renew && docker-compose restart nginx

cp /etc/letsencrypt/live/private.s-hirano.com/privkey.pem /root/s-tools/s-private/minio/certs/private.key
cp /etc/letsencrypt/live/private.s-hirano.com/fullchain.pem /root/s-tools/s-private/minio/certs/public.crt

docker-compose restart s-storage
