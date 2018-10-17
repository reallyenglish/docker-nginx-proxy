FROM nginx:1.15

RUN rm /etc/nginx/*_params /etc/nginx/koi-* /etc/nginx/win-*

COPY nginx.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/
COPY 404.html 50x.html /usr/share/nginx/html/
