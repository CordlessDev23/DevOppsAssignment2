FROM node:19.8.1-alpine
WORKDIR /labone
ENV NODE_ENV=production
RUN chown node:node /labone
USER node
COPY --chown=node:node . .
RUN npm install
EXPOSE 3000
CMD ["node", "src/index.js"]

