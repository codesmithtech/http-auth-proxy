# http-auth-proxy
Docker image that allows for configuration of a simple HTTP reverse proxy with HTTP Auth enabled

## Usage

```
docker run \
    -e HTTP_AUTH_USERNAME=some_user \
    -e HTTP_AUTH_PASSWORD=some_password \
    -e BACKEND_URL=http://some-important-backend-url \
    -p 80:80 \
    codesmithtech/http-auth-proxy:latest
```
