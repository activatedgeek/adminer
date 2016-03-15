FROM activatedgeek/nginx-php:latest

MAINTAINER Sanyam Kapoor "1sanyamkapoor@gmail.com"

RUN apt-get -y update &&\
  apt-get install -y curl &&\
  mkdir -p /adminer &&\
  curl -L https://www.adminer.org/latest-en.php > /adminer/index.php &&\
  curl https://raw.githubusercontent.com/vrana/adminer/master/designs/pepa-linha/adminer.css > /adminer/adminer.css &&\
  apt-get remove --purge -y curl &&\
  apt-get autoremove -y &&\
  apt-get clean &&\
  apt-get autoclean &&\
  rm -rf /var/lib/apt/lists/* &&\
  rm -rf /usr/share/man/*

ADD ./nginx/adminer.conf /etc/nginx/sites-available/default

WORKDIR /adminer

EXPOSE 80

CMD ["/bin/bash", "/docker-entrypoint.sh"]
