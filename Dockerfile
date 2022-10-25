FROM nginx
RUN rm -rf /usr/share/nginx/html/*
COPY ./dist/crudtuto-Front /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
