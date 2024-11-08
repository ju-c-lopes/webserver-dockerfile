FROM node
WORKDIR /app-node
COPY ./files.zip .
RUN unzip files.zip && rm files.zip && npm install
ENTRYPOINT ["npm", "start"]