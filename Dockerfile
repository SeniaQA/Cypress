FROM node:18-alpine

WORKDIR /app
COPY package.json .
COPY yarn.lock .
RUN yarn install

COPY . .

ENV PORT 3001
EXPOSE 3001

CMD ["yarn", "tsnode", "--files", "backend/app.ts"]