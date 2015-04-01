FROM node
MAINTAINER Luciano A. Borguetti Faustino <lucianoborguetti@gmail.com>

RUN npm install gitbook-cli -g

VOLUME .:/code

WORKDIR /code

CMD ["gitbook", "build"]
