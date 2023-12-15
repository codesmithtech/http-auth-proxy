#!/bin/bash

if [ -z "$HTTP_AUTH_USERNAME" ]; then
    echo "HTTP_AUTH_USERNAME must be set in the environment"
    exit 1
fi

if [ -z "$HTTP_AUTH_PASSWORD" ]; then
    echo "HTTP_AUTH_PASSWORD must be set in the environment"
    exit 1
fi

htpasswd -cb /etc/nginx/http-auth.htpasswd "$HTTP_AUTH_USERNAME" "$HTTP_AUTH_PASSWORD"

rm -f /etc/nginx/conf.d/default.conf
