From nginx
RUN \
  echo "**** install runtime packages ****" && \
  uname -a && \ 
  apt update && \ 
  apt install unzip && \ 
  echo "**** install keeweb packages ****" && \
    #wget "https://github.com/keeweb/keeweb/releases/download/v1.18.7/KeeWeb-1.18.7.html.zip" --directory-prefix=/tmp && \
    curl -L -o /tmp/keeweb.zip "https://github.com/keeweb/keeweb/releases/download/v1.18.7/KeeWeb-1.18.7.html.zip" && \
    ls /tmp && \
    unzip "/tmp/keeweb.zip" -d /usr/share/nginx/html
