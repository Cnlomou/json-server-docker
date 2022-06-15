 FROM node:17-slim AS base
 WORKDIR /home/asd
 RUN npm init -y && npm install json-server
 COPY package.json package.json
 EXPOSE 8088
 # 容器启动时执行的命令，类似npm run start
 CMD npm run start