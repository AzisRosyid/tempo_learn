import 'dart:ui';

import 'package:tempo_learn/common/data/Question.dart';
import 'package:tempo_learn/common/data/QuestionContent.dart';
import 'package:tempo_learn/common/data/Quiz.dart';
import 'package:tempo_learn/common/data/Section.dart';

List<Section> sections = [
  Section(
      id: 1,
      title: "Bab 1: Pengenalan Prinsip Kontiguitas Temporal",
      video: "video1.mp4",
      summary: "Helo",
      reference: "Helo",
      colors: const [
        Color(0xFF74B5ED),
        Color(0xFF0A75D1),
      ],
      quiz: getQuiz[0]),
  Section(
      id: 2,
    title: "Bab 2: Penelitian Prinsip Kontiguitas Temporal",
    video: "video1.mp4",
    summary: "Helo",
    reference: "Helo",
    colors: const [
      Color(0xFFF48B58),
      Color(0xFFBF5432),
    ],
    quiz: getQuiz[1]
  ),
  Section(
    id: 3,
    title: "Bab 3: Implikasi Prinsip Kontiguitas Temporal",
    video: "video1.mp4",
    summary: "Helo",
    reference: "Helo",
    colors: const [
      Color(0xFFD0B0F1),
      Color(0xFFA468E1),
    ],
    quiz: getQuiz[2]
  ),
];

List<Quiz> getQuiz = [
  // Quiz 2
  Quiz(title: 'Mitigasi Gunung Merapi', questions: [
    Question(
      contents: [
        QuestionContent(
          content: 'Berapa ketinggian puncak Gunung Merapi?',
          type: 1,
        ),
      ],
      answers: [
        '2.290 meter',
        '3.142 meter',
        '4.365 meter',
        '5.678 meter',
      ],
      correct: 1,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa nama sistem peringatan dini yang digunakan di Sleman?',
          type: 1,
        ),
      ],
      answers: [
        'SMART',
        'SIAGA',
        'SATKORLAK',
        'EWS',
      ],
      correct: 3,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa yang harus dilakukan jika terjadi hujan abu vulkanik?',
          type: 1,
        ),
      ],
      answers: [
        'Berjemur di luar rumah',
        'Menggunakan payung biasa',
        'Menggunakan masker N95',
        'Bermain di luar rumah',
      ],
      correct: 2,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Bagaimana cara mengidentifikasi zona bahaya Gunung Merapi?',
          type: 1,
        ),
      ],
      answers: [
        'Dengan melihat perubahan warna langit',
        'Dengan mendengarkan nyanyian burung',
        'Menggunakan peta evakuasi',
        'Mengandalkan perasaan pribadi',
      ],
      correct: 2,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa fungsi pos pengamatan Gunung Merapi?',
          type: 1,
        ),
        QuestionContent(
          content: 'quiz1.jpg',
          type: 2,
        ),
      ],
      answers: [
        'Menjual suvenir Gunung Merapi',
        'Memantau aktivitas Gunung Merapi',
        'Menyediakan makanan',
        'Mengadakan konser musik',
      ],
      correct: 1,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Bagaimana cara menghindari bahaya dari lahar dingin?',
          type: 1,
        ),
      ],
      answers: [
        'Berlari secepat mungkin',
        'Tetap di dalam rumah',
        'Mendaki ke puncak gunung',
        'Mengikuti rute evakuasi yang ditetapkan',
      ],
      correct: 3,
    ),
    Question(
      contents: [
        QuestionContent(
          content:
              'Apa yang harus dilakukan saat terjadi erupsi Gunung Merapi?',
          type: 1,
        ),
      ],
      answers: [
        'Melihat erupsi dari jarak dekat',
        'Meninggalkan zona bahaya sesuai perintah',
        'Berjemur di luar rumah',
        'Mencoba memadamkan erupsi',
      ],
      correct: 1,
    ),
    Question(
      contents: [
        QuestionContent(
          content:
              'Bagaimana cara merawat masker N95 untuk perlindungan dari abu vulkanik?',
          type: 1,
        ),
      ],
      answers: [
        'Melemparkannya setelah digunakan sekali',
        'Mencucinya dengan sabun biasa',
        'Menyimpannya di tempat kering dan bersih',
        'Menggunakannya berulang kali tanpa mencuci',
      ],
      correct: 2,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa itu Tanggap Darurat Bencana (TDB) dan apa peranannya?',
          type: 1,
        ),
      ],
      answers: [
        'TDB adalah tarian tradisional di Sleman',
        'TDB adalah tim penyelamat bencana',
        'TDB adalah tempat bermain anak-anak',
        'TDB adalah festival kuliner',
      ],
      correct: 1,
    ),
    Question(
      contents: [
        QuestionContent(
          content:
              'Apa langkah pertama yang harus diambil saat mendengar peringatan awal erupsi Gunung Merapi?',
          type: 1,
        ),
      ],
      answers: [
        'Berbicara dengan teman-teman tentangnya',
        'Mengabaikannya dan berharap tidak terjadi',
        'Menerima peringatan dan mengikuti petunjuk resmi',
        'Bermain game online',
      ],
      correct: 2,
    ),
  ]),

  // Quiz 3

  Quiz(title: 'Evakuasi Aman di Gunung Merapi', questions: [
    Question(
      contents: [
        QuestionContent(
          content:
              'Bagaimana prosedur evakuasi yang benar saat terjadi erupsi Gunung Merapi?',
          type: 1,
        ),
        QuestionContent(
          content: 'quiz2.jpg',
          type: 2,
        ),
      ],
      answers: [
        'Tetap tinggal di dalam rumah',
        'Berlari ke arah Gunung Merapi',
        'Meninggalkan zona bahaya sesuai petunjuk resmi',
        'Mengadakan pesta evakuasi',
      ],
      correct: 2,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa yang harus dibawa saat evakuasi dari zona bahaya?',
          type: 1,
        ),
      ],
      answers: [
        'Peralatan camping',
        'Buku-buku pelajaran',
        'Tas darurat dengan persediaan makanan, air, obat-obatan, dan dokumen penting',
        'Peralatan memasak',
      ],
      correct: 2,
    ),
    Question(
      contents: [
        QuestionContent(
          content:
              'Apa yang harus dilakukan jika terjebak di dalam rumah saat erupsi?',
          type: 1,
        ),
      ],
      answers: [
        'Mencoba keluar dengan aman jika memungkinkan',
        'Tetap berada di dalam rumah dan menunggu bantuan',
        'Membuka jendela untuk melihat keadaan luar',
        'Menghidupkan TV dan menonton berita',
      ],
      correct: 0,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Bagaimana mengamankan kendaraan saat terjadi erupsi?',
          type: 1,
        ),
      ],
      answers: [
        'Meninggalkan kendaraan di mana saja',
        'Membawa kendaraan ke zona aman',
        'Menggunakan kendaraan untuk berlindung dari erupsi',
        'Meninggalkan kendaraan di jalan raya',
      ],
      correct: 1,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa yang perlu diperhatikan saat mencari tempat evakuasi?',
          type: 1,
        ),
      ],
      answers: [
        'Pilih tempat yang terdekat tanpa memeriksa kondisinya',
        'Pastikan tempat tersebut aman dari bahaya erupsi',
        'Pilih tempat yang memiliki fasilitas mewah',
        'Tidak perlu mencari tempat evakuasi',
      ],
      correct: 1,
    ),
    Question(
      contents: [
        QuestionContent(
          content:
              'Apa yang harus dilakukan jika ada anggota keluarga yang terpisah selama evakuasi?',
          type: 1,
        ),
      ],
      answers: [
        'Biarkan saja mereka mencari tempat sendiri',
        'Tetaplah di tempat yang aman dan hubungi pihak berwenang',
        'Lanjutkan evakuasi tanpa peduli pada anggota keluarga yang terpisah',
        'Cari mereka dengan segera tanpa memperhatikan keamanan diri',
      ],
      correct: 1,
    ),
    Question(
      contents: [
        QuestionContent(
          content:
              'Bagaimana cara mengidentifikasi tempat aman di dalam rumah?',
          type: 1,
        ),
      ],
      answers: [
        'Terus berjalan di dalam rumah sampai menemukan tempat yang sesuai',
        'Pilih ruangan dengan jendela besar',
        'Pilih ruangan terdekat dengan pintu keluar',
        'Tidur di bawah tangga',
      ],
      correct: 2,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa yang harus dilakukan jika rute evakuasi terhalang?',
          type: 1,
        ),
      ],
      answers: [
        'Terus mencoba menembus rute yang terhalang',
        'Kembali ke rumah dan menunggu di sana',
        'Mencari rute alternatif atau tempat perlindungan',
        'Mengadakan piknik di tempat tersebut',
      ],
      correct: 2,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa yang harus dilakukan jika terluka selama evakuasi?',
          type: 1,
        ),
      ],
      answers: [
        'Menutupi luka dengan tanah atau abu',
        'Meminta orang lain untuk melihat luka',
        'Membersihkan luka dan memberikan perawatan pertama',
        'Melanjutkan perjalanan tanpa memperhatikan luka',
      ],
      correct: 2,
    ),
    Question(
      contents: [
        QuestionContent(
          content:
              'Bagaimana cara membantu tetangga yang membutuhkan selama evakuasi?',
          type: 1,
        ),
      ],
      answers: [
        'Mengabaikan mereka karena harus fokus pada diri sendiri',
        'Menyediakan bantuan jika memungkinkan, seperti membawa persediaan darurat',
        'Menertawakan mereka karena panik',
        'Menyuruh mereka untuk mencari pertolongan sendiri',
      ],
      correct: 1,
    ),
  ]),

  // Quiz 4
  Quiz(title: 'Pemahaman Peta Evakuasi Gunung Merapi', questions: [
    Question(
      contents: [
        QuestionContent(
          content: 'Bagaimana cara membaca peta evakuasi Gunung Merapi?',
          type: 1,
        ),
      ],
      answers: [
        'Menggunakan teropong',
        'Melihat ke arah Gunung Merapi',
        'Mengikuti petunjuk dan simbol yang tertera',
        'Menghitung jumlah pohon di sekitar Gunung Merapi',
      ],
      correct: 2,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa itu zona bahaya tinggi, zona siaga, dan zona aman?',
          type: 1,
        ),
      ],
      answers: [
        'Nama-nama sekolah di Sleman',
        'Tingkat kebahayaan berdasarkan jarak dari Gunung Merapi',
        'Nama-nama sungai di Sleman',
        'Tingkat kesulitan pendakian Gunung Merapi',
      ],
      correct: 1,
    ),
    Question(
      contents: [
        QuestionContent(
          content:
              'Bagaimana mengidentifikasi lokasi tempat evakuasi terdekat?',
          type: 1,
        ),
      ],
      answers: [
        'Bertanya pada tetangga',
        'Mengikuti arah mata angin',
        'Menggunakan peta evakuasi dan menemukan lokasi yang paling dekat',
        'Memanggil pihak berwenang',
      ],
      correct: 2,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa perbedaan antara rute evakuasi primer dan sekunder?',
          type: 1,
        ),
      ],
      answers: [
        'Tidak ada perbedaan',
        'Rute evakuasi primer hanya untuk kendaraan',
        'Rute evakuasi sekunder adalah yang paling aman',
        'Rute evakuasi primer adalah yang paling pendek',
      ],
      correct: 3,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa yang harus dilakukan jika rute evakuasi terhalang?',
          type: 1,
        ),
      ],
      answers: [
        'Berhenti dan menunggu di tempat yang terhalang',
        'Kembali ke rumah dan tidur',
        'Menyerah dan menyerahkan nasib pada keadaan',
        'Mencari rute alternatif atau tempat perlindungan',
      ],
      correct: 3,
    ),
    Question(
      contents: [
        QuestionContent(
          content:
              'Apa yang perlu diperhatikan saat menggunakan peta evakuasi dalam situasi darurat?',
          type: 1,
        ),
      ],
      answers: [
        'Menyalakan ponsel untuk mencari petunjuk',
        'Tetap tenang dan fokus pada petunjuk peta',
        'Melupakan peta dan mengandalkan insting',
        'Membaca peta dengan cepat tanpa memeriksa simbol',
      ],
      correct: 1,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Bagaimana cara mengidentifikasi titik kumpul yang aman?',
          type: 1,
        ),
      ],
      answers: [
        'Mencari tempat dengan banyak pohon',
        'Mengikuti kerumunan orang lain tanpa berpikir',
        'Menggunakan peta evakuasi untuk menemukan titik kumpul yang ditunjukkan',
        'Menunggu di tempat yang nyaman',
      ],
      correct: 2,
    ),
    Question(
      contents: [
        QuestionContent(
          content:
              'Apa yang harus dilakukan jika ada perubahan situasi selama evakuasi?',
          type: 1,
        ),
      ],
      answers: [
        'Terus bergerak tanpa memperhatikan perubahan',
        'Mengabaikan perubahan dan tetap di tempat semula',
        'Panik dan berlari ke arah yang tidak jelas',
        'Mengikuti petunjuk pihak berwenang dan beradaptasi dengan perubahan',
      ],
      correct: 3,
    ),
    Question(
      contents: [
        QuestionContent(
          content: 'Apa peran peta evakuasi dalam upaya mitigasi bencana?',
          type: 1,
        ),
      ],
      answers: [
        'Memberikan panduan visual tentang zona-zona bahaya dan rute evakuasi',
        'Hanya untuk tujuan dekorasi',
        'Menunjukkan jalan-jalan indah di sekitar Gunung Merapi',
        'Tidak memiliki peran dalam mitigasi bencana',
      ],
      correct: 0,
    ),
    Question(
      contents: [
        QuestionContent(
          content:
              'Bagaimana cara berkomunikasi dengan keluarga selama evakuasi menggunakan peta?',
          type: 1,
        ),
      ],
      answers: [
        'Mengabaikan keluarga dan fokus pada peta',
        'Menyebutkan koordinat GPS secara terus-menerus',
        'Menggambar gambar lucu di peta untuk menghibur keluarga',
        'Menggunakan peta untuk menjelaskan lokasi dan rencana evakuasi kepada keluarga',
      ],
      correct: 3,
    ),
  ])];