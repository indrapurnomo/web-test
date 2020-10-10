FROM nginx:alpine

WORKDIR /var/www/html/


COPY . .

EXPOSE 8888/tcp
