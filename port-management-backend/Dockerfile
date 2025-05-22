# 1. Node tabanlı image kullan
FROM node:18

# 2. Uygulama dizini
WORKDIR /app

# 3. Paket dosyalarını kopyala
COPY package*.json ./

# 4. Bağımlılıkları yükle
RUN npm install

# 5. Diğer tüm dosyaları kopyala
COPY . .

# 6. Port aç
EXPOSE 5000

# ✅ 7. Uygulama başlat (npm start ile)
CMD ["npm", "start"]
