FROM nginx:alpine
COPY . /usr/share/nginx/html/
RUN find /usr/share/nginx/html -type f -exec chmod 644 {} \; && find /usr/share/nginx/html -type d -exec chmod 755 {} \;
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
