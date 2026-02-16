# 🏥 Sistem Pakar Penyakit Jantung

[![Status](https://img.shields.io/badge/status-in%20development-yellow)]()

Sistem pakar untuk mendiagnosis penyakit jantung menggunakan metode **Forward Chaining**.

## ⚠️ Status Project

Project ini sedang dalam tahap pengembangan aktif. Beberapa fitur masih dalam proses perbaikan:

- [ ] Security hardening (SQL injection prevention)
- [ ] Password hashing implementation
- [ ] Algorithm optimization
- [ ] Comprehensive testing

## 📋 Fitur

- ✅ Diagnosis penyakit jantung berdasarkan gejala
- ✅ CRUD data penyakit, gejala, dan aturan
- ✅ Sistem login admin
- ✅ Export data ke PDF
- ✅ Interface responsive dengan Bootstrap 5

## 🛠️ Tech Stack

- **Backend:** PHP
- **Database:** MySQL
- **Frontend:** HTML, CSS, Bootstrap 5
- **Algorithm:** Forward Chaining

## 📦 Instalasi

### Requirements:
- PHP 7.4+
- MySQL 5.7+
- Apache/Nginx

### Langkah Instalasi:

1. Clone repository ini:
```bash
git clone https://github.com/username/sistempakar.git
```

2. Import database:
- Buka phpMyAdmin
- Buat database baru: `spfc_jantung`
- Import file: `db/spfc_jantung.sql`

3. Konfigurasi database:
- Copy `config.example.php` menjadi `config.php`
- Edit `config.php`, sesuaikan username dan password database

4. Jalankan di browser:
```
http://localhost/sistempakar
```

## 🔐 Login Admin

**Default credentials:**
- Username: `admin`
- Password: `admin`

⚠️ **Penting:** Segera ganti password setelah login pertama kali!

## 📝 Cara Penggunaan

1. Akses halaman utama
2. Klik "Mulai Diagnosa"
3. Pilih minimal 3 gejala yang dialami
4. Klik tombol "Diagnosa"
5. Sistem akan menampilkan hasil diagnosis dan solusi

## 🗂️ Struktur Database

- `admin` - Data administrator
- `penyakit` - Data penyakit jantung
- `gejala` - Data gejala penyakit
- `aturan` - Relasi antara penyakit dan gejala
- `solusi` - Solusi untuk setiap penyakit

## 🚧 Roadmap

- [ ] Implementasi prepared statements untuk keamanan
- [ ] Password hashing
- [ ] Improve algoritma forward chaining
- [ ] Unit testing
- [ ] Refactor ke arsitektur MVC
- [ ] Deploy live demo

## 📄 License

MIT License

## 👨‍💻 Author

**Nama Kamu**
- GitHub: [](https://github.com/SamuelPanjaitan-stack)
- Email: samuelpanjaitan16@gmail.com

---

⭐ Jika project ini membantu, berikan star ya!
