FROM nginx:stable-alpine

COPY openapi.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/openapi

COPY api-docs.json /var/www/openapi
COPY api-docs.yaml /var/www/openapi
COPY graph.png /var/www/openapi
COPY .htpasswd /var/www