docker run -it --rm --name certbot \
  -v /etc/letsencrypt:/etc/letsencrypt \
  -v /var/www/certbot:/var/www/certbot \
  certbot/certbot certonly --webroot \
  --webroot-path=/var/www/certbot \
  --email s-hirano-ist@outlook.com \
  --agree-tos \
  --no-eff-email \
  -d private.s-hirano.com
