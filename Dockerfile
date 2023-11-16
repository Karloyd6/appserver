FROM node:19-slim
WORKDIR /opt/k-server
COPY /src .
RUN npm install
ENV APP_PORT=3000
ENV DB_HOST=mongodb
ENV DB_PORT=27017
ENV DB_NAME=kilinc-emlak
ENV PASSWORD_HASH_KEY=kilincEmlak_PasswordHashKey:3452334!
CMD [ "npm", "start" ]