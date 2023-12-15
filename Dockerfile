FROM nginx:latest
RUN apt-get update && \
    apt-get install -y apache2-utils && \
    apt-get clean
COPY *.template /etc/nginx/templates/
COPY run.sh /docker-entrypoint.d/90-http-auth-proxy.sh

