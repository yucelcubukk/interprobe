# 1. Node image
FROM node:18

# 2. Uygulama dizini
WORKDIR /app

# 3. Paket bilgilerini kopyala
COPY package*.json ./

# 4. Bağımlılıkları yükle
RUN npm install

# 5. Diğer dosyaları kopyala
COPY . .

# 6. Port aç
EXPOSE 3000

# 7. Uygulama başlat
CMD ["npm", "start"]
