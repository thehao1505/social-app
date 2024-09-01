FROM node:20-alpine3.19

WORKDIR /app

COPY package*.json .

ENV DATABASE_URL="postgresql://postgres:Abc12345@54.254.6.26:5432/scmedia?schema=public"
ENV JWT_SECRET="myjwtsecret"
ENV EMAIL_HOST="smtp.gmail.com"
ENV EMAIL_PORT=587
ENV EMAIL_USER="riotnox1530@gmail.com"
ENV EMAIL_PASS="jgrh bbcz yyyi rhoj"

RUN npm install

COPY . .

RUN npx prisma generate

RUN npm run build

CMD ["node", "dist/main.js"]