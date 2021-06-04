FROM nginx
COPY index.html /usr/share/nginx/solulab/
COPY privkey.pem  /etc/letsencrypt/live/shivangani.tk/
COPY fullchain.pem  /etc/letsencrypt/live/shivangani.tk/
COPY domain.conf /etc/nginx/conf.d/domain.conf
EXPOSE 443 80

