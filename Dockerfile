FROM nginx:1.11.1

COPY default.conf /etc/nginx/conf.d/default.conf
COPY cfg /usr/local/bin/cfg
