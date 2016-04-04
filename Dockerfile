FROM nginx:1.9.12

COPY default.conf /etc/nginx/conf.d/default.conf
COPY cfg /usr/local/bin/cfg
