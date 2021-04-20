FROM registry.access.redhat.com/ubi8/nginx-118 AS nginx

# ENV NGINX_APP_ROOT=/opt/app-root
# ENV NGINX_CONFIGURATION_PATH=/opt/app-root/etc/nginx.d
# ENV NGINX_CONF_PATH=/etc/opt/rh/rh-nginx118/nginx/nginx.conf
# ENV NGINX_CONTAINER_SCRIPTS_PATH=/usr/share/container-scripts/nginx
# ENV NGINX_DEFAULT_CONF_PATH=/opt/app-root/etc/nginx.default.d
# ENV NGINX_LOG_PATH=/var/opt/rh/rh-nginx118/log/nginx

ENV NGINX_DOC_ROOT=${NGINX_APP_ROOT}/src/www
RUN mkdir -vp ${NGINX_DOC_ROOT}

#	Add application sources
ADD nginx/nginx.conf "${NGINX_CONF_PATH}"
# ADD nginx/nginx-cfg/*.conf "${NGINX_CONFIGURATION_PATH}"
ADD nginx/nginx-default-cfg/*.conf "${NGINX_DEFAULT_CONF_PATH}"
# ADD nginx/www/*.html "${NGINX_DOC_ROOT}"

#	Run script uses standard ways to run the application
CMD nginx -g "daemon off;"
