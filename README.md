# Tugas #5 Mobile Developer Documentation - Flutter Navigation & StDokumentasi teknis: implementasi navigasi antar screen (Stack Navigation) dan manajemen state menggunakan Flutter.

---

## Ringkasan Aplikasi

1. **Screen 1 (Katalog Layanan IT - StatelessWidget):**
   - Menampilkan daftar 3 paket layanan: Paket Pemula, Paket Standar, dan Paket Profesional.
   - Menggunakan card interaktif yang dapat diklik untuk navigasi.
2. **Screen 2 (Detail Katalog - StatefulWidget):**
   - Menampilkan detail informasi paket, harga, ikon, dan deskripsi berlatar warna pastel.
   - Mengimplementasikan interaktivitas state saat tombol "Pilih Paket" ditekan.
   - Memiliki tombol navigasi kembali ke Screen 1.

---

## 1. Panduan Setup Project Flutter

Ikuti langkah-langkah berikut untuk menjalankan aplikasi Flutter di perangkat lokal / emulator:

### Prasyarat:
- Flutter SDK (versi stable terbaru)
- Android Studio / VS Code dengan ekstensi Flutter & Dart
- Emulator Android / iOS Simulator / Google Chrome

### Langkah-langkah:
1. **Clone Repository:**
   ```bash
   git clone https://github.com/Ayradd24/Mobile.git
   cd flutter_1
   ```

2. **Unduh Dependencies:**
   ```bash
   flutter pub get
   ```

3. **Jalankan Aplikasi:**
   ```bash
   flutter run
   ```

---

## 2. Perintah Menjalankan Server Lokal (Laragon)

Jika aplikasi diintegrasikan dengan backend API / server lokal:

### Menjalankan Server dengan Laragon:
1. Buka aplikasi **Laragon**.
2. Klik tombol **Start All** untuk menjalankan Apache dan MySQL.
3. Server lokal aktif di `http://localhost/` atau domain lokal Laragon.

### Menjalankan via Terminal Laragon (Alternatif):
Jika menggunakan backend berbasis PHP:
```bash
php -S localhost:8000
```

Jika menggunakan backend berbasis Node.js:
```bash
npm install
npm run dev
```

---

## 3. Panduan Import Database MySQL di Laragon

### Cara 1: Melalui phpMyAdmin
1. Pastikan Laragon sudah dalam kondisi **Start All**.
2. Buka browser dan akses `http://localhost/phpmyadmin`.
3. Klik **New** di panel kiri, beri nama database `db_mobile`, lalu klik **Create**.
4. Buka tab **Import** pada menu atas.
5. Klik **Choose File** dan pilih file `db_mobile.sql`.
6. Gulir ke bawah dan klik tombol **Import** / **Go**.

### Cara 2: Menggunakan Terminal Laragon
1. Klik tombol **Terminal** pada jendela utama Laragon.
2. Buat database baru:
   ```sql
   mysql -u root -e "CREATE DATABASE db_mobile;"
   ```
3. Import file SQL ke dalam database:
   ```bash
   mysql -u root db_mobile < db_mobile.sql
   ```

---

## Struktur Berkas Utama

```text
lib/
├── main.dart
├── tiered_pricing_card.dart
├── detail_katalog.dart
├── user_model.dart
db_mobile.sql
README.md
```
