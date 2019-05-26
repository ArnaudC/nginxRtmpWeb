FROM tiangolo/nginx-rtmp

COPY nginx.conf /etc/nginx/nginx.conf

RUN rm -rf /etc/nginx/html/ && mkdir /etc/nginx/html/

COPY vgaplayer /etc/nginx/html/
