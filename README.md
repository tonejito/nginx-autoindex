# nginx-autoindex

This repo builds a `ubi8/nginx` container with _autoindex_ support and an empty `NGINX_DOC_ROOT` located at `/opt/app-root/src/www`.

```
$ podman pull quay.io/tonejito/nginx:autoindex
```

- https://github.com/sclorg/httpd-container
- https://github.com/sclorg/httpd-container/tree/master/2.4/root/usr/share/container-scripts/httpd#build-an-application-using-a-dockerfile
- https://github.com/sclorg/httpd-ex.git
- https://github.com/sclorg/httpd-container/blob/master/2.4/Dockerfile.rhel8
- https://github.com/sclorg/container-common-scripts/tree/93c2c51fbe77b247fc4d3ff0cf703bf22a8f2a66
