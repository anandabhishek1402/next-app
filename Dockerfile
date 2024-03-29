FROM node:20
WORKDIR /usr/src/app
COPY . ./
RUN npm install
ARG ENV
ENV ENV=$ENV
RUN echo $ENV
CMD npm run $ENV
