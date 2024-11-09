FROM node
WORKDIR /app-node
ARG PORT=3000
ENV PORT=$PORT
EXPOSE $PORT
COPY ./files.zip .
RUN unzip files.zip && rm files.zip && npm install
ENTRYPOINT ["npm", "start"]