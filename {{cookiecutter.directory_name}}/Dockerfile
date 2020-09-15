FROM harbor.a.tt.se/ttab/node-erbium
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json yarn.lock /usr/src/app/
RUN yarn install --production
COPY . /usr/src/app
CMD [ "npm", "start" ]
