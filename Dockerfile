FROM nginx
COPY default.template /etc/nginx/conf.d/default.template
COPY dest /var/www/html/web
RUN chmod -R 775 /var/www/html/web
CMD envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'