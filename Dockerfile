#Mengunduh base image "NODE" dari docker hub dengan versi 14
FROM node:14

#Membuat directory bernama app dalam container
WORKDIR /app

#menyalin semua berkas yang ada di local working directory saat ini
COPY . .

#Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

#Menginstal dependencies untuk production dan kemudian build aplikasi.
RUN npm install --production --unsafe-perm && npm run build

#mengekspos port yang akan digunakan oleh container, yakni 8080. 
EXPOSE 8080

#jalankan server dengan perintah npm start saat container diluncurkan
CMD ["npm", "start"]