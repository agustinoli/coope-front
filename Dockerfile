# pull the base image
FROM node:16.15.1 as development

# set the working direction
WORKDIR /app

# install app dependencies
COPY package.json yarn.lock ./

RUN yarn --frozen-lockfile

# add app
COPY . ./

FROM development as builder

ARG ENVIRONMENT

RUN yarn run build

# ENTRYPOINT ["./docker-entrypoint.sh"]

CMD [ "yarn", "start" ]