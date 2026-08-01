FROM nginx:alpine

# Copy static files
COPY . /usr/share/nginx/html

# Nginx ko port 80 se 8000 par configure karna
RUN sed -i 's/listen       80;/listen       8000;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8000
