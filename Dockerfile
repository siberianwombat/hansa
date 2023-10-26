FROM node:18-alpine
WORKDIR /app/
COPY pages/ /app/pages
COPY public/ /app/public
COPY src/ /app/src
COPY .env /app/
COPY .env.local /app/
COPY next-env.d.ts /app/
COPY next.config.js /app/
COPY package.json /app/
COPY tsconfig.json /app/
COPY yarn.lock /app/
RUN yarn
RUN yarn build
CMD ["yarn", "start"]
# docker image build -t hansa:latest .
# docker run -dp 8000:3000 --name hansa hansa:latest
#  docker container ls --all
