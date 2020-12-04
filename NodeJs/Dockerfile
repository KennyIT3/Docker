FROM node:14-slim

RUN mkdir -p /app/src

WORKDIR /app/src

COPY package.json  /src/

RUN npm install

COPY . . 

EXPOSE 3000

CMD [ "npm", "start" ]

# FROM base as production
# ENV NODE_ENV=production
# RUN npm ci
# COPY . /src
# CMD ["node", "bin/www"]

# FROM base as dev
# ENV NODE_ENV=development
# RUN npm install -g nodemon && npm install
# COPY . /src
# CMD ["nodemon", "bin/www"]