FROM nginx:1.17.1-alpine
RUN rm -rf /usr/share/nginx/html/*
COPY ./dist/crudtuto-Front /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx
CMD ["nginx", "-g", "daemon off;"]
