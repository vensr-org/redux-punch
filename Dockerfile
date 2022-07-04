FROM node:alpine
RUN npm install -g serve
COPY . /app
WORKDIR /app
RUN npm install
RUN npm run build
COPY ./build /build
WORKDIR /build
CMD ["serve"]
