FROM node:18-alpine

WORKDIR /app
COPY . .

RUN su node -c "npm install -g @angular/cli npm"

EXPOSE 4200

CMD ["npm", "run", "start"]