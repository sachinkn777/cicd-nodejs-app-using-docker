FROM node:13-alpine
#FROM alpine:latest
#RUN apk add --no-cache nodejs npm


WORKDIR /app

RUN cd /var/lib/jenkins/workspace/cicd-js-app/cicd-nodejs-app-using-docker/

COPY . /app


RUN npm install


EXPOSE 9005


ENTRYPOINT ["node"]

CMD ["server.js"]
