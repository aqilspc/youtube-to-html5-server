FROM node:17.2.0
COPY . /app
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
COPY . . 
#RUN ls.
CMD ["node", "index.js"]
