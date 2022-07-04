FROM node:alpine
RUN npm install -g serve
COPY . /app
WORKDIR /app
RUN npm install
RUN npm run build
WORKDIR /app/build
CMD ["serve"]
