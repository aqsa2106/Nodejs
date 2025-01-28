FROM node:16-alpine

WORKDIR /app

# Salin package.json dan package-lock.json, lalu instal dependencies
COPY package*.json ./
RUN npm install

# Salin seluruh aplikasi
COPY . ./

# Bangun aplikasi React
RUN npm run build

# Gunakan serve untuk menyajikan aplikasi React dari folder build
RUN npm install -g serve
EXPOSE 3000
CMD ["serve", "-s", "build"]
