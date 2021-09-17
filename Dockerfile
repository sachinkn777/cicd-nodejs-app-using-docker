FROM node:13-alpine
#FROM alpine:latest
#RUN apk add --no-cache nodejs npm


WORKDIR /app


COPY ./cicd-nodejs-app-using-docker/ /app


RUN npm install


EXPOSE 9005


ENTRYPOINT ["node"]

CMD ["server.js"]
