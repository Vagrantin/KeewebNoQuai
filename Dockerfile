From nginx
RUN \
  echo "**** install runtime packages ****" && \
  apk add --no-cache \
    wget && \
  echo "**** install keeweb packages ****" && \
    wget "https://github.com/keeweb/keeweb/releases/download/v1.18.7/KeeWeb-1.18.7.html.zip" --directory-prefix=/tmp && \
    unzip "/tmp/KeeWeb-1.18.7.html.zip" -d /usr/share/nginx/html
