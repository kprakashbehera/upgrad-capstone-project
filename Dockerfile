FROM node:16
RUN mkdir upg-loadme-app
COPY upg-loadme-app /upg-loadme-app
WORKDIR /upg-loadme-app
RUN npm install

CMD ["npm", "start"]