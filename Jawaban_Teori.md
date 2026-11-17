
# Jawaban Soal Teori - UTS Pemrograman Mobile (IF400106)

Nama : Acep Muhammad Alfi Husaeni
NIM  : 123005004
Dosen: Tori Sutisna, S.T., M.Kom.

## 1. Mobile Computing

Mobile computing adalah teknologi komputasi yang memungkinkan pengguna
mengakses data, informasi, dan aplikasi dari perangkat yang dapat dibawa
berpindah-pindah (smartphone, tablet, laptop, wearable) melalui jaringan
nirkabel, tanpa terikat pada satu lokasi tetap.

Tiga komponen utamanya:
- Perangkat keras mobile (smartphone, tablet, dan sejenisnya)
- Perangkat lunak mobile (sistem operasi dan aplikasi)
- Komunikasi nirkabel (Wi-Fi, jaringan seluler, Bluetooth)

## 2. Aplikasi Mobile

Aplikasi mobile adalah perangkat lunak yang dirancang untuk berjalan pada
perangkat bergerak seperti smartphone dan tablet, dan umumnya dipasang
melalui toko aplikasi (Google Play Store atau App Store).

Kategori aplikasi mobile berdasarkan fungsinya:
1. Media sosial dan komunikasi (WhatsApp, Instagram, TikTok)
2. Game (Mobile Legends, Free Fire)
3. E-commerce dan belanja (Shopee, Tokopedia)
4. Edukasi (Ruangguru, Duolingo)
5. Produktivitas (Google Docs, Notion)
6. Transportasi dan keuangan (Gojek, aplikasi mobile banking)

Berdasarkan teknologi pembuatannya, aplikasi mobile terbagi menjadi native,
web app, dan hybrid/cross-platform (contohnya Flutter dan React Native).

## 3. Siklus Hidup (Lifecycle) Activity pada Android

Activity adalah satu layar antarmuka pada aplikasi Android. Selama
digunakan, activity berada pada empat keadaan utama:

1. Running (Aktif/Resumed): activity tampil di layar dan berinteraksi dengan
   pengguna. Dipanggil lewat onCreate(), onStart(), lalu onResume().
2. Paused: activity masih terlihat sebagian tetapi tidak lagi menerima
   fokus, misalnya tertutup dialog atau activity lain yang transparan.
   Dipanggil lewat onPause().
3. Stopped: activity sepenuhnya tertutup oleh activity lain dan tidak
   terlihat, tetapi masih tersimpan di memori. Dipanggil lewat onStop().
   Jika pengguna kembali, activity melewati onRestart() lalu onStart().
4. Destroyed: activity dihancurkan dan dihapus dari memori, baik karena
   ditutup pengguna maupun oleh sistem. Dipanggil lewat onDestroy().

## 4. Widget pada Pemrograman Mobile

Widget adalah elemen dasar pembentuk antarmuka pengguna (UI). Pada Flutter,
hampir semua hal adalah widget: teks, tombol, gambar, tata letak (layout),
bahkan padding dan alignment. Widget disusun bertingkat membentuk widget
tree, dengan widget induk (parent) yang membungkus widget anak (child).

Contoh: Text, Image, Container, Column, Row, Scaffold, AppBar.

## 5. Perbedaan StatelessWidget dan StatefulWidget

| Aspek | StatelessWidget | StatefulWidget |
|---|---|---|
| State | Tidak memiliki state internal; tampilan tetap | Memiliki state yang dapat berubah |
| Pembaruan UI | Tidak berubah setelah dibangun | Dapat membangun ulang UI dengan setState() |
| Struktur kelas | Satu kelas dengan method build() | Dua kelas: widget dan State |
| Lifecycle | Hanya build() | initState(), build(), dispose(), dan lainnya |
| Penggunaan | Konten statis: teks, ikon, judul | Konten dinamis: form, counter, checkbox |
| Performa | Lebih ringan | Sedikit lebih berat |
