FROM node
RUN apt-get update && apt-get install -y vim

RUN mkdir /skillbox
COPY package.json /skillbox
WORKDIR /skillbox
RUN yarn install
COPY . /skillbox

RUN yarn test
RUN yarn build

CMD yarn start
EXPOSE 3000
