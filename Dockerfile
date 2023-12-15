FROM nginx:latest
RUN apt-get update && \
    apt-get install -y apache2-utils && \
    apt-get clean
COPY *.conf /etc/nginx/conf.d/
COPY run.sh /docker-entrypoint.d/90-http-auth-proxy.sh

