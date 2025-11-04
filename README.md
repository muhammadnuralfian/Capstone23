🌿 CAPSTONE23 – Green Samarinda Collaboration Program Management

🧩 Deskripsi Singkat
Green Samarinda adalah aplikasi desktop berbasis Java yang digunakan untuk mengelola program kolaborasi antara masyarakat, stakeholder, dan pihak pemerintah dalam kegiatan lingkungan di Kota Samarinda.
Aplikasi ini memungkinkan pengguna untuk menambah, mengedit, dan menghapus program kolaborasi, serta menampilkan data kegiatan secara terstruktur dan efisien.

✨ Fitur Program
👥 Manajemen Akun Pengguna (Stakeholder, Masyarakat, Admin)

📅 CRUD Program Kolaborasi (Tambah, Edit, Hapus, Tampil)

🗂️ Laporan Kegiatan

🏞️ Manajemen TPS (Tempat Pengelolaan Sampah)

🔗 Koneksi Database MySQL (Singleton Pattern)

🖼️ Antarmuka GUI dengan Java Swing

💾 Integrasi Database MySQL

🧱 Penerapan Konsep OOP (Object-Oriented Programming)
Encapsulation
Setiap model seperti ProgramKolaborasi, AkunPengguna, dan LaporanKegiatan memiliki atribut private dan diakses melalui getter & setter. Ini menjaga data tetap aman dari manipulasi langsung.

inheritance
Kelas GUI tertentu seperti MenuUtama, StakeholderForm, dan ProgramKolaborasiForm mewarisi dari JFrame untuk memanfaatkan komponen bawaan Swing.

Abstraction
Interface ProgramKolaborasiDAO mendefinisikan kontrak fungsi (addProgram, updateProgram, getAllPrograms) tanpa mengetahui implementasi detailnya.

Polymorphism
Implementasi dari interface ProgramKolaborasiDAO di ProgramKolaborasiDAOImpl memanfaatkan polymorphism agar objek dao bisa menggunakan berbagai implementasi berbeda.

Interface
ProgramKolaborasiDAO adalah contoh nyata interface dalam sistem ini, yang diimplementasikan oleh kelas DAO.

📁 Struktur Folder / Package

src/main/java/
├── main/
│   └── MenuUtama.java
├── view/
│   ├── ProgramKolaborasiForm.java
│   ├── LaporanKegiatanForm.java
│   ├── TPSForm.java
│   └── MenuStakeholderExtendedForm.java
├── dao/
│   ├── ProgramKolaborasiDAO.java
│   ├── ProgramKolaborasiDAOImpl.java
│   ├── AkunPenggunaDAO.java
│   └── AkunPenggunaDAOImpl.java
├── model/
│   ├── ProgramKolaborasi.java
│   ├── AkunPengguna.java
│   └── LaporanKegiatan.java
└── database/
    └── DatabaseConnection.java
    
⚙️ Library / Framework yang Digunakan

Library	Fungsi
MySQL Connector/J (8.0.31)	Menghubungkan aplikasi dengan database MySQL

JCalendar (toedter.calendar.JDateChooser)	Komponen pemilih tanggal di GUI

Apache Maven	Manajemen dependensi dan build system

Java Swing	Framework GUI

Java Logging (java.util.logging)	Logging event dan error aplikasi

🚀 Cara Menggunakan Program

**Menu awal**
<img width="1244" height="851" alt="image" src="https://github.com/user-attachments/assets/973dffe0-8884-43d5-a76e-58f57fac96de" />

**Menu register**
<img width="1229" height="849" alt="image" src="https://github.com/user-attachments/assets/333b0eca-647e-4ce9-b5af-fedea89b8bc8" />

**Menu Login**
<img width="1224" height="848" alt="image" src="https://github.com/user-attachments/assets/7f4682d2-2451-40ed-aa65-e702efc94e00" />

**Menu super admin**
<img width="1232" height="847" alt="image" src="https://github.com/user-attachments/assets/45e05397-0afa-4f8a-b741-b1ae07dbb355" />

**Menu kelola data laporan**
<img width="1234" height="850" alt="image" src="https://github.com/user-attachments/assets/9459eed4-5ee2-4d58-9b29-dc3d7ad47c7c" />

**menu kelola data pengguna**
<img width="1226" height="853" alt="image" src="https://github.com/user-attachments/assets/79edaa94-f9a7-4875-a8cd-9a834d46b621" />

**menu kelola data  stakholder**
<img width="1221" height="840" alt="image" src="https://github.com/user-attachments/assets/935b2570-4d5c-48bf-b1c6-d89aba22e039" />

**Menu sub admin**
<img width="1226" height="851" alt="image" src="https://github.com/user-attachments/assets/d34706c7-a506-4d31-91e8-72d423d2dbc2" />

**Menu pelaporan masyarakat**
<img width="1230" height="849" alt="image" src="https://github.com/user-attachments/assets/36e01fab-6246-40fb-83fd-4ddc3dba5f73" />

**Menu profil masyarakat**
<img width="980" height="631" alt="image" src="https://github.com/user-attachments/assets/053ee6ca-0cef-4647-9dd2-18e32b09f1a5" />

**Menu utama stakholder**
<img width="1228" height="845" alt="image" src="https://github.com/user-attachments/assets/3d97805b-4750-4a89-b7ba-3fd7b7788450" />

**menu stakholder**
<img width="1227" height="849" alt="image" src="https://github.com/user-attachments/assets/06f46f1b-7104-4390-8627-c20e7171384b" />

**Menu program kolaborasi**
<img width="1232" height="849" alt="image" src="https://github.com/user-attachments/assets/32a6ad3e-d542-4fb1-9844-b5601b610c38" />

**Menu laporan kegiatan**
<img width="1230" height="852" alt="image" src="https://github.com/user-attachments/assets/3abb019e-7f81-4886-be83-5f84a74a546e" />

Menu manajemen data TPS
<img width="1228" height="843" alt="image" src="https://github.com/user-attachments/assets/23531564-d86f-45c7-bfba-4be5fc5ac108" />

