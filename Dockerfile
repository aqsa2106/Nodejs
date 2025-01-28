FROM node:16-alpine

# Set working directory
WORKDIR /app

# Salin package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin semua file aplikasi ke dalam container
COPY . ./

# Build aplikasi React
RUN npm run build

# Install serve untuk menyajikan aplikasi
RUN npm install -g serve

# Ekspos port 3000
EXPOSE 3000

# Jalankan aplikasi menggunakan serve
CMD ["serve", "-s", "build"]
