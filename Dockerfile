FROM node
# set the working directory
# all the command will be executed inside this directly
WORKDIR /app
# COPY package.json /app
# COPY server.js /app
# compile time command (build the image)
COPY package* /app

ARG NODE_ENV
RUN if [ "${NODE_ENV}" = "development"]; \
then npm install; \ 
else npm install --only=production; \
fi


COPY . /app
ENV PORT 4000
EXPOSE ${PORT}
# CMD ["nodemon", "server.js"]
CMD ["node", "server.js"]
