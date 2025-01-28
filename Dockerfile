# Gunakan image Node.js untuk build aplikasi
FROM node:16-alpine as builder

# Set working directory
WORKDIR /app

# Salin file package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin semua file proyek
COPY . ./

# Build aplikasi React
RUN npm run build

# Gunakan image Nginx untuk menyajikan aplikasi statis
FROM nginx:1.21-alpine

# Salin file build dari tahap sebelumnya
COPY --from=builder /app/build /usr/share/nginx/html

# Ekspos port default Nginx
EXPOSE 80

# Jalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
