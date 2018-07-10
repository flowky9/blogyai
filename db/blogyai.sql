-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2018 at 06:21 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogyai`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(3, 'Programming'),
(4, 'Gaming'),
(5, 'Sport'),
(6, 'Travelling'),
(7, 'Politik'),
(9, 'Masakan'),
(10, 'Farm');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `reply` text NOT NULL,
  `status` enum('on','off') NOT NULL DEFAULT 'off'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `name`, `email`, `date`, `reply`, `status`) VALUES
(1, 18, 'Lance', 'lance@myblog.com', '2018-02-01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley.', 'on'),
(3, 18, 'Udin', 'udin@myblog.om', '2018-02-06', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley', 'on'),
(4, 18, 'Safa', 'safa@myblog.com', '2018-02-07', 'Test Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley', 'on'),
(8, 18, 'Johan', 'johan@myblog.com', '2018-02-22', 'wah artikel yang sangat menarik dan bermanfaat', 'on'),
(9, 18, 'Naruto', 'johan@myblog.com', '2018-02-22', 'wah artikel yang sangat menarik dan bermanfaat mantap buat dibawa ke Konoha', 'on'),
(10, 18, 'Pain Akatsuki', 'johan@myblog.com', '2018-02-22', 'wah artikel yang sangat menarik dan bermanfaat mantap buat dibawa ke Amegakure', 'on'),
(11, 18, 'Luffy', 'luffy@myblog.com', '2018-02-22', 'Lorem Ipsum is simply dummy text of the printing ggwp banget deh', 'on'),
(12, 18, 'Franky', 'luffy@myblog.com', '2018-02-22', 'Lorem Ipsum is simply dummy text of the printing ggwp banget deh', 'on'),
(13, 18, 'Franky', 'luffy@myblog.com', '2018-02-22', 'Lorem Ipsum is simply dummy text of the printing ggwp banget deh', 'on'),
(15, 57, 'awe', 'awe@awe.com', '2018-07-02', 'wah hebat aku udah mytic', 'on'),
(16, 18, 'hafidz', 'hafidz@gmail.com', '2018-07-04', 'wah bagus sekali jadi nambah pengetahuan saya', 'on'),
(17, 18, 'aaa', 'aaa@aaa.com', '2018-07-10', 'aaaaa', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `date` date NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `category_id`, `title`, `description`, `date`, `image`, `status`) VALUES
(13, 5, '3 Alasan Rossi Sulit Bendung Marquez Jadi Juara Dunia MotoGP 2018', 'Marquez mengantongi nilai 140 poin dari delapan balapan sepanjang MotoGP 2018. Dia unggul 41 poin atas peringkat kedua, Rossi.\r\n\r\nPosisi ketiga ditempati pembalap Yamaha lainnya, Maverick Vinales, yang berselisih 47 poin dari Marquez. Adapun Johann Zarco menghuni posisi keempat dengan raihan 81 poin atau terpaut 59 poin dari Marquez.\r\n\r\nRossi mengakui tak mudah mengadang Marquez dalam pacuan juara dunia 2018. Apalagi pada MotoGP Belanda, Rossi hanya finis kelima, di belakang Alex Rins, Maverick Vinales, dan Andrea Dovizioso. Harapan Rossi merengkuh gelar juara dunia ke-10 kali kini menemui jalan terjal.\r\n\r\n\"Marquez penantang terkuat untuk gelar. Sulit (menghentikannya),\" kata Rossi, selepas balapan seperti dilansir Speedweek.\r\n\r\nMenurut Rossi selain margin lebar antara Marquez dengan para rival, ada dua alasan lain yang membuat dirinya sulit membendung Baby Alien.\r\n\r\n\"Alasannya karena dia lebih cepat daripada kami pembalap Yamaha. Yang kedua, dia juga lebih kuat dari siapapun,\" sambung Valentino Rossi.\r\n1 dari 2 halaman\r\nPeringkat Kedua\r\n\r\nRossi mengatakan kans menggeser Marquez dari puncak masih terbuka, tapi tak mudah. Saat ini, peluang terbaik Yamaha adalah finis kedua. Apalagi peringkat kedua hingga keempat klasemen sementara dikuasai pembalap Yamaha.\r\n\r\n\"Saya rasa, jika membahas pertarungan memperebutkan titel, sangat membosankan bagi kami. Di saat bersamaan, kami menunjukkan pertarungan hebat untuk peringkat kedua,\" kata Rossi.\r\n\r\n\"Setidaknya ada dua atau tiga pembalap terlibat (dalam perebutan peringkat ketiga). Kami tak akan melepasnya. Kami juga berharap bisa memperbaiki performa motor pada paruh kedua musim ini. Tapi, itu tak mudah,\" sambung Rossi.\r\n\r\nPesaing terberat Marc Marquez musim lalu, Andrea Dovizioso, belum berjadi pada musim ini. Pembalap Italia tersebut baru mengantongi 79 poin atau terpaut 61 poin dari Marc Marquez.', '2018-02-19', 'rossi.jpg', 0),
(15, 9, 'Cara Masak Rendang Daging Sapi Khas Padang Asli yang Empuk dan Enak', '\r\n\r\nCara Masak Rendang Daging Sapi Khas Padang \r\n\r\nSasaCooks pecinta rendang daging sapi? SasaCooks tentu mengetahui bahwa makanan khas Padang ini telah menjadi warisan kuliner dan kelezatannya juga diakui dunia. Rendang adalah adalah jenis olahan daging sapi yang dibumbui rempah-rempah untuk memperkaya cita rasa. Rendang menjadi sorotan utama masyarakat ketika memesan makanan di rumah makan masakan padang. Akan tetapi, rendang yang enak dan gurih tidak tersaji begitu saja. Proses pembuatan rendang hingga berwarna cokelat dan kering membutuhkan waktu sekitar 4 jam. Bahan dasar yang diperlukan adalah daging sapi dan santan. Gunakan Santan Bubuk Sasa supaya proses memasak rendang menjadi lebih praktis. SasaCooks ingin tahu cara memasak rendang khas Padang yang empuk dan enak? Yuk simak tips berikut ini:\r\n\r\n \r\n\r\nDipipihkan\r\n\r\nPotong-potong daging sapi atau kerbau yang telah dicuci bersih. Selanjutnya, SasaCooks perlu melakukan teknik sederhana, yaitu dengan memipihkan potongan daging tersebut. Hal ini bertujuan supaya daging tidak terlalu tebal sehingga daging menjadi lebih empuk. Cara memipihkan dagingnya sangat mudah, pukul daging dengan alat pemukul daging yang bergerigi hingga menjadi agak pipih. Setelah itu, daging siap untuk dimasak sesuai selera SasaCooks.\r\n\r\n \r\n\r\nBalur Dengan Buah Nanas Yang Sudah Dihaluskan\r\n\r\nTeknik yang satu ini berbeda dengan cara sebelumnya, yakni menggunakan nanas yang sudah diparut ataupun diblender. Buah nanas yang digunakan sebaiknya nanas yang masih muda, bukan nanas yang telah matang. Nanas muda memiliki kandungan enzim bromelin yang ampuh untuk menguraikan serat pada daging sapi sehingga daging menjadi empuk setelah dimasak. Caranya mudah, balurkan daging dengan ketebalan sesuai selera SasaCooks dengan nanas yang sudah dihaluskan, kemudian diamkan hingga 30 menit. Setelah itu, cuci daging hingga bersih, barulah mulai untuk memasak.\r\n\r\n \r\n\r\nBalut Dengan Daun Pepaya\r\n\r\nApakah SasaCooks pasti pernah mendengar cara yang satu ini?  Cara ini dapat melembutkan tekstur daging dan bumbu dapat meresap ke dalam daging. Caranya adalah dengan membalut daging (yang sudah dibumbui terlebih dahulu) dengan daun pepaya, kemudian diamkan selama kurang lebih 1 jam.\r\n\r\n \r\n\r\n \r\n\r\nNah itu dia cara agar daging rendang menjadi empuk dan enak. Mana nih cara yang paling mudah menurut SasaCooks? Intip juga resep Rendang khas Sasa di\r\nhttp://www.kreasisasa.com/satu-nusa-satu-sasa/sumatera-barat/rendang-kapau', '2018-02-20', 'db13eb9a7ee9c1fcac22dea23078cccb.jpg', 0),
(18, 3, 'Cara Enjoy Memulai Belajar Pemrograman', 'Pada prinsipnya sama seperti kita ingin menuju Roma, akan ada banyak jalan. Kita bisa lewat Bogor, kemudian ke Bandung lalu sampai di Roma. Atau kita juga bisa lewat Karawang, kemudian ke Jakarta, selanjutnya mendaki gunung Krakatau dan sampailah di Roma (anggap saja itu benar :D). Ya, untuk menjadi seorang programmer pun demikian, ada banyak cara yang bisa ditempuh untuk belajarnya.\r\n\r\nBeberapa di antara kita tentu berbeda-beda caranya dalam belajar pemrograman, dan ini dipengaruhi oleh banyak faktor, seperti latar belakang, kecepatan belajar, keadaan ekonomi dan juga mungkin lingkungan. Selain itu, cara saya jatuh cinta dengan pemrograman bisa jadi berbeda dengan cara Kamu. Dan mungkin itu pun mempengaruhi.\r\n\r\nSesuatu yang harus kita pahami adalah, bahwa tidak mungkin hari ini ingin jadi seorang master programmer, kemudian kita hanya nonton tv, kemudian tidur dan pagi harinya kita tiba-tiba bisa membuat program super keren yang bisa mengalahkan sofware buatan Microsoft. Tidak ada ceritanya kita sedang berjalan-jalan di musium Taman Mini, tiba-tiba ada seekor laba-laba yang menggigit kita, kemudian kita ketiduran di jalanan, dibangunkan satpam dan setelah bangun kita langsung bisa coding sambil bergelantungan di pohon. Satu hal yang harus kita sepakati adalah, ada sebuah proses yang harus kita lalui untuk itu.\r\n\r\nPernah ada yang bertanya pada saya, “Kak, saya sudah lama ingin belajar pemrograman, gimana ya caranya?”. Kemudian saya tanyakan, “Apa yang sudah kamu lakukan supaya Kamu bisa belajar pemrograman?”, kemudian dia menggeleng dan menjawab “belum ngapa-ngapain sih”. Kemudian saya tanya, “Kamu sudah coba beli buku tentang pemrograman?”, dia jawab “belum”. “Kamu sudah baca artikel di internet tentang pemrograman?”, dia pun menjawab belum. Saya kaget, kok bisa menginginkan sesuatu, tapi tidak melakukan sesuatu untuk mencapainya? Semua butuh proses kawan...\r\n\r\nSesuatu yang saya ingin sampaikan di atas adalah, buat Kamu yang ingin bisa pemrograman, Kamu harus siap untuk menjalani prosesnya, tidak ada yang instan untuk pandai pemrograman. Tidak gampang memang, tapi saya jamin akan menarik. Kalau kamu sependapat dengan saya, sebenarnya programming itu bukan hanya sebatas ilmu untuk membuat program komputer, tetapi juga merupakan gaya hidup, dan kamu bisa menikmatinya.\r\n\r\nBaca juga: Semua yang Perlu Kamu Ketahui untuk Memulai Belajar Pemrograman\r\n\r\nArtikel ini saya tulis bukan untuk yang sudah mahir pemrograman, tidak... tidak mungkin saya mengajarkan ikan cara untuk berenang :D. Artikel ini khusus untuk Kamu yang baru melihat keindahan dari pemrograman, dan kamu tergoda untuk mendalaminya, karena kamu melihat ada secercah kebahagiaan yang bisa didapatkan di dalamnya, namun Kamu bingung bagaimana cara memulainya.\r\n\r\nApa yang akan saya sampaikan selanjutnya, tidak bersifat absolute, artinya tidak mesti demikian. Karena seperti yang saya singgung di awal, ada banyak jalan untuk menuju Roma. Dan cara setiap orang berbeda-beda. Namun semoga ini bisa membantu Kamu untuk memulai. Buat teman-teman yang sudah lama mendalami programming, dan punya sebuah “cara”, nanti bisa dishare juga ya di kotak komentar, itu pasti akan bermanfaat.\r\n\r\nBerikut ini adalah beberapa hal yang bisa Kamu lakukan untuk memulai belajar pemrograman:\r\n1. Mengerti dulu apa itu \"programming\"\r\n\r\nSebelum Kamu melakukan sesuatu, Kamu harus tau dulu dong apa yang ingin Kamu lakukan. Kamu harus tau dulu apa itu programming. Sama seperti Kamu suka seorang wanita, sebelum Kamu mulai melakukan pendekatan, apalagi menembaknya, minimalnya Kamu harus punya informasi tentang dia. Misalnya Kamu harus tau berapa jumlah lubang hidungnya, apakah dia makan menggunakan tangan atau tidak, bagaimana cara berjalannya, apakah kakinya ada 2, apakah ibunya perempuan :D. Semakin banyak informasi yang Kamu tau, maka akan semakin baik. Dan mungkin akan membuat Kamu semakin jatuh cinta.\r\n\r\nSebagian dari kita tidak mencoba mendalami pemrograman, karena mungkin hanya tau sebagian saja. Misalnya hanya tau, “pemrograman itu lo akan nulis kode di texteditor dan lo bisa bikin program”. Kalau hanya itu yang diketahui, wajar saja jika dia tidak tertarik untuk belajar pemrograman.\r\n\r\nBayangkan jika kita tau bahwa dengan pemrograman kita bisa membuat sebuah program yang bermanfaat bagi orang banyak, semua dunia akan senang menggunakan program kita, bahkan dengan program itu kita bisa menjadi kaya raya, kita bisa membuat perusahaan sendiri, kita bisa membuka lapangan pekerjaan baru, dan bisa membuat orang lain bahagia dan sejahtera. Itu akan terdengar lebih menarik. Atau mungkin juga, ketika kita punya anak nanti, kita bisa membuatkan game khusus edisi spesial untuk ulang tahun anak kita, atau membuatkan website untuk keluarga bahagia kita, atau mungkin kita bisa membuat sebuah aplikasi untuk menembak gebetan kita dengan aplikasi yang super romantis. Bro.. Bayangkan banyak sekali yang bisa kita lakukan. Semakin banyak informasi yang kita tahu, maka semakin banyak juga alasan yang kita punya untuk mempelajari pemrograman.\r\n\r\nSo, sekali lagi, kalau kamu ingin memulai belajar pemrograman, maka mengertilah terlebih dahulu apa itu pemrograman dan pengetahuan dasar yang mendukungnya, agar tidak tersesat. Kamu bisa mulai baca-baca di sini: Pengetahuan Dasar Pemrograman.\r\n\r\nBaca juga: Kode Etik Programmer Yang Wajib Kita Ketahui\r\n2. Pilihlan sebuah bahasa pemrograman\r\n\r\nlanguages\r\n\r\nPada akhirnya kita memang harus memilih. Banyak sekali bahasa pemrograman yang ada di dunia, mulai dari bahasa mesin, bahasa tingkat rendah, bahasa tingkat menengah dan bahasa tingkat tinggi. Kamu bisa cek sendiri di sini http://id.wikipedia.org/wiki/Bahasa_pemrograman</a>, silahkan pelajari kelebihan dan kekurangannya masing-masing. Atau buat kamu yang masih bingung saking banyaknya bahasa pemrograman dan butuh rekomendasi juga pencerahan untuk memilih bahasa pemrograman apa yang harus kamu pelajari untuk memulai belajar, kamu bisa baca artikel \"Bahasa Pemrograman Apa yang Cocok untuk Dipelajari Pertama Kali ?\".\r\n\r\nKamu mungkin bisa saja mempelajari semuanya, tapi saya sarankan pilihlah satu terlebih dahulu. Kuasailah satu terlebih dahulu. Dalamilah. Yang harus kita ingat adalah, bahasa pemrograman bukanlah sebuah agama yang kita hanya boleh memilih satu dan tidak bisa seenaknya kita ganti. Kamu bebas saja berganti-ganti bahasa pemrograman yang Kamu ingin kuasai nanti, jika Kamu mau. Tapi... Pelajarilah dulu satu. Kuasailah secara mendalam.\r\n3. Mulailah belajar\r\n\r\nSekarang Kamu sudah tau apa itu pemrograman dan Kamu sudah punya bahasa pemrograman yang ingin Kamu kuasai, selanjutnya pelajarilah. Belajarlah algoritma dasar dengan bahasa pemrograman yang Kamu pilih. Caranya banyak sekali, bisa melalui buku, bisa juga melalui artikel-artikel di internet, tutorial-tutorial pemrograman di internet seperti Tutorial CodePolitan dan Interactive Coding (Belajar Coding Online Interaktif). Atau Kamu juga bisa coba belajar pemrograman dari majalah/ebook pemrograman seperti CodePolitan Magazine. Atau buat kamu yang ingin belajar lebih cepat dan intensif, kamu bisa mengikuti Kursus Belajar Pemrograman. Ya, banyak sekali caranya. Silahkan Kamu pilih sendiri yang paling sesuai dengan metode belajarmu.\r\n4. Buatlah program-program sederhana\r\n\r\nSlide1\r\n\r\n(sumber: http://rumadimatematika.blogspot.com</a>)\r\n\r\nBelajar saja tidak cukup, harus dipraktekan. Cobalah buat program-program sederhana. Jika Kamu masih sekolah, Kamu bisa mencoba membuat program sederhana untuk mata pelajaran Matematikamu, seperti membuat program “menghitung luas lingkaran”, “menghitung volume balok”. Itu sangat menarik kawan, dulu saya melakukan hal itu. Kalau Kamu adalah seorang guru, mungkin Kamu bisa membuat program untuk menjelaskan pada muridmu bagaimana sebuah planet berputar. Atau apa saja lah... Nggak mesti yang serius juga bisa, misalnya membuat program untuk mendaftar nama mantan-mantanmu. Hehehe... Pada intinya, cobalah untuk membuat sesuatu, mulai dari yang sederhana dari apa yang Kamu sudah kuasai.\r\n5. Updatelah selalu informasi\r\n\r\nInformasi sangat penting kawan. Boleh jadi apa yang Kamu sedang pelajari sudah tidak lagi dipelajari oleh orang lain karena sudah ada yang lebih menarik atau lebih baik. Kamu tidak akan tau itu kecuali Kamu update informasi.\r\n\r\nSalah satu cara update informasi adalah, kamu bisa mengunjungi web-web yang senantiasa memberikan informasi, seperti SitePoint, Mashable, OMG! Ubuntu! atau CodePolitan (website yang sedang kamu baca ini).\r\n\r\nKamu juga bisa like fan page dan follow twitter, pihak-pihak yang senantiasa memberikan informasi tentang programming atau teknologi secara umum.\r\n\r\nBeberapa akun twitter orang hebat yang bisa Kamu follow bisa Kamu baca di sini http://www.codepolitan.com/koleksi-akun-twitter-pembuat-framework/</a>.\r\n\r\nKamu juga bisa like fanpage Kami di http://www.facebook.com/codepolitan</a>, follow twitter kami di @CodePolitan dan subscribe channel Youtube kami CodePolitan. Kami selalu update informasi yang mungkin bisa bermanfaat buat kamu.\r\n\r\nBaca juga: Download Ebook Belajar Pemrograman dan Teknologi Gratis!\r\n6. Bergabunglah di grup-grup atau forum-forum pemrograman\r\n\r\nSelection_008\r\n\r\nKawan, Kamu tidak sendiri! Banyak sekali orang-orang sepertimu yang sedang belajar atau bahkan sudah jago. Kamu bisa menyapa mereka, bahkan Kamu bisa bertanya kepada mereka jika memang perlu.\r\n\r\nKetika Kamu bergabung di forum atau grup pemrograman, Kamu akan melihat ada banyak orang hebat yang bisa Kamu tiru dan teladani dari segi programmingnya. Bahkan nggak jarang, mereka pun sering memberikan informasi-informasi penting yang mungkin bermanfaat buat Kamu. Dan ketika Kamu terlibat dalam sebuah forum, Kamu pun bisa membantu rekan-rekan yang lain yang mungkin bisa Kamu bantu. Beberapa forum pemrograman yang bisa Kamu ikuti bisa Kamu temukan di artikel 17 Grup Populer tentang Pemrograman di Facebook yang Berasal dari Indonesia atau 5 Grup Pemrograman Visual Basic Terbesar dari Indonesia di Facebook, dan jika kamu mau, kamu juga bisa bergabung bersama kami dalam facebook group Coders Indonesia.\r\n\r\n Demikianlah, semoga bermanfaat. Ingat kawan, memang tidak mudah belajar pemrograman. Kita harus belajar algoritma yang penuh dengan logika yang rumit, kita juga harus mempelajari sebuah bahasa pemrograman yang bahasanya nggak mirip dengan bahasa manusia. Tapi jika dijalani dan menganggapnya sebagai sebuah tantangan dan proses yang harus dilalui, ternyata itu semua bisa menjadi menyenangkan.\r\n\r\nBagi kamu yang masih bingung karena baru mengenal pemrograman, kamu bisa memulainya dengan mempelajari konten-konten dasar tentang pemrograman melalui tautan berikut:\r\n\r\n    Pengetahuan dasar pemrograman: Start Learning\r\n    Kumpulan artikel yang harus diketahui pemula: Coder Journey: BEGIN\r\n    Cara belajar pemrograman di CodePolitan: How to Start?\r\n\r\nSelamat belajar, semoga menyenangkan... :D', '2018-02-20', 'v4-728px-Become-a-Programmer-Step-3.jpg', 0),
(57, 4, '10 Tips Main Mobile Legends Agar Menang Terus', 'Bukan hanya Hero yang kuat di Mobile Legends, kamu juga perlu mengetahui beberapa hal agar menang terus saat main game ini. Apa saja yang bisa diperhatikan saat main Mobile Legends? Yuk cek daftarnya!\r\n1. Pastikan Koneksi Stabil\r\ntips-mobile-legends-1\r\n\r\nSebagai game online yang banyak dimainkan di seluruh dunia, Mobile Legends memerlukan koneksi internet yang kencang dan stabil. Pasalnya jika Ping koneksi kamu di atas 200, maka akan lag dan bisa membuat kamu kalah saat bermain.\r\n\r\n2. Perkuat Emblem\r\ntips-mobile-legends-2\r\n\r\nTips main Mobile Legends selanjutnya, perhatikan Emblem. Sebelum mulai Battle di Mobile Legends, jangan lupa untuk memperkuat Emblem-nya dulu. Yang mana jika level Emblem semakin kuat, makan akan semakin kuat juga Hero-mu saat bertanding.\r\n3. Jangan Egois, Pilih Hero yang Tepat\r\ntips-mobile-legends-3\r\n\r\nSebagai permainan team, kamu tidak boleh egois saat main game Mobile Legends. Kamu harus memperhatikan Hero apa yang dibutuhkan. Yang mana dalam satu team harus ada Tanker, Assasin, Marksman dan Mage. Jika tidak ada Hero yang mengisi, segera isi posisinya agar bisa membuat team yang kuat.\r\nHero Kuat Nih!\r\nMari kita mulai dari jenis-jenis hero di Mobile Legends. Sangat penting untuk mengetahui pembagian role (peran) dalam Mobile Legends. Sehingga tim kamu bisa bertarung secara efektif dan membawa kemenangan.\r\nLIHAT ARTIKEL\r\n4. Pilih Emblem yang Sesuai\r\n\r\nSelain Hero, Emblem yang tepat juga sangat mempengaruhi performamu saat bertanding di Mobile Legends. Dengan menggunakan Emblem yang tepat dengan level yang tinggi, maka Hero yang kamu gunakan akan mendapatkan tambahan kecepatan, kekuatan, HP, serangan jarak jauh, dan lain-lain.\r\ntips-mobile-legends-4\r\n\r\nSebagai contoh, jika kamu kebagian untuk menggunakan Tanker, maka pilihlah Emblem yang memberikan tambahan bonus Def dan HP. Sementara jika Marksman, fokus di Emblem yang bisa menambah Move Speed dan Attack. Begitulah tips main Mobile Legends yang biasanya difokuskan oleh pemain pro.\r\n5. Pilh Ability yang Tepat\r\n\r\nWalau Hero dan Emblemnya sudah tepat, akan sedikit sulit jika Ability atau Spell yang kamu pilih ternyata salah. Untuk Marksman yang punya HP kecil, ada baiknya pilih Ability yang fokus pada meningkatkan kecepatan. Jadi bisa kabur saat diserang.\r\ntips-mobile-legends-5\r\n\r\nSetiap Hero memiliki Ability yang berbeda, sesuai karakternya masing-masing. Jadi, kalo mau emnang terus saat main Mobile Legends, pastikan kamu memilih Hero, Emblem dan Ability yang tepat ya. Dijamin main Mobile Legends bisa menang terus!\r\n6. Fokus Leveling di Awal Permainan\r\ntips-mobile-legends-6\r\n\r\nTipsMobile Legends selanjutnya yang sangat penting adalah Leveling di awal permainan. Semakin tinggi level Hero kamu, maka akan semakin kuat juga Skill-nya. Leveling bisa dilakukan dengan membunuh Creep atau monster, serta Hero lawan di arena. Segera naikan level kamu agar semua skill kamu terbuka!\r\n7. Pilih Gear yang Sesuai\r\n\r\nUang yang kamu dapatkan dari hasil Leveling, bisa kamu gunakan untuk membeli Gear yang akan memperkuat Hero milikmu. Itulah alasannya kenapa leveling sangat penting di awal permainan.\r\ntips-mobile-legends-7\r\n\r\nNamun ingat, beli Gear yang tepat guna untuk Hero milikmu. Ada baiknya kamu kumpulkan uang yang kamu dapatkan untuk membeli Gear yang mahal dan kuat sekalian. Soalnya bonus yang diberikan dari Gear game Mobile Legends akan semakin besar jika harganya semkain mahal.\r\n8. Aktif Bergerak di Awal Permainan\r\ntips-mobile-legends-8\r\n\r\nDi awal game, sangat disarankan agar kamu aktif bergerak dari Top Lane, Mid Lane, hingga Bottom Lane. Tujuannya jelas, untuk Leveling. Sekaligus kamu bisa membantu teman untuk membasmi Hero lawan jika dibutuhkan.\r\n9. Jangan Asal Maju\r\ntips-mobile-legends-9\r\n\r\nTips penting saat mainMobile Legends selanjutnya adalah soal maju dalam permainan. Kamu jangan asal maju di tengah permainan, karena bisa berakibat Come Back dari lawan. Jika kamu bertugas menjaga Bottom Lane, maka fokuslah menjaga tower. Jangan maju terlalu jauh dari tower.\r\n10. Fokus Menghancurkan Tower!\r\ntips-mobile-legends-10\r\n\r\nBukan membunuh Hero lawan sebanyak mungkin, tujuan utama dari game Mobile Legends ini adalah menghancurkan tower lawan. Karena itu, seranglah tower lawan selagi ada kesempatan. Percuma banyak membunuh Hero lawan jika akhirnya ternyata tower arenamu hancur duluan.\r\n\r\nNah, itu dia 10 tips main Mobile Legends agar kamu bisa menang terus selama bermain. Jangan lupa download game Mobile Legends dan simak tips-tips lain tentang Mobile Legends di JalanTikus ya!', '2018-07-10', 'tips-mobile-legends-banner.jpg', 0),
(59, 9, 'Mau Bikin Nasi Goreng Seenak Buatan Resto? Perhatikan 4 Tips Penting Ini!', 'Mau Bikin Nasi Goreng Seenak Buatan Resto? Coba 4 Tips Penting Ini!\r\n\r\nSasaCooks pernah merasa kalau nasi goreng buatan sendiri rasanya tidak seenak nasi goreng di restoran? Padahal sudah mengikuti resep, bumbu-bumbu yang digunakan pun sudah sempurna. Lalu mengapa nasi goreng ini masih terasa “kurang”? Entah teksturnya yang lembek, aroma yang kurang sedap hingga rasanya yang kurang gurih.\r\n\r\nHidangan favorit orang Asia ini ternyata nggak bisa dimasak sembarangan lho. Nah, berikut ini adalah 4 tips penting untuk membuat nasi goreng seenak buatan resto.\r\n\r\n \r\n\r\n1. Gunakan Nasi Pera/Kering Dari Beras Berkualitas\r\n\r\nSebelum membuat nasi goreng, pastikan terlebih dahulu kalau beras yang SasaCooks gunakan itu adalah beras berkualitas baik. Gunakanlah nasi yang sudah pera (sedikit kering) yang sudah dimasak sehari sebelumnya atau beberapa jam sebelumnya. Hal ini dikarenakan nasi yang baru matang memiliki tekstur yang masih lembek lho, SasaCooks.\r\n\r\n \r\n\r\n2. Gunakan Wajan Penggorengan Yang Lebih Lebar\r\n\r\nMemasak nasi goreng harus mengaduk-aduk seluruh komposisi nasi goreng hingga bumbu tercampur dengan merata. Oleh karena itu, gunakanlah wajan penggorengan yang berukuran lebar. Wajan yang lebar juga mencegah nasi goreng dan isinya berhamburan keluar saat sedang diaduk-aduk.\r\n\r\n \r\n\r\n3. Gunakan Api Besar Ketika Nasi Hampir Matang\r\n\r\nSalah satu faktor yang membuat nasi goreng buatan restoran terasa spesial adalah aromanya yang khas. Aroma ini dihasilkan dari suhu panas dari api. Tekniknya adalah besarkan api setelah semua bumbu tecampur sempurna, kemudian nasi terus diaduk dengan cepat hingga hampir gosong, bukan gosong yah! Tanda nasi goreng SasaCooks sudah matang adalah asap yang keluar dan aroma bumbu semakin harum. Hal ini yang bikin nasi goreng resto enak dan bikin ketagihan. Tentu saja teknik hampir gosong ini termasuk sulit untuk dilakukan karena sedikit daja terlambat, nasi goreng sudah over cook sehingga tidak enak dimakan.\r\n\r\n \r\n\r\n4. Jangan Terpaku Pada Resep\r\n\r\nSaat memasak nasi goreng, sebaiknya tidak terpaku pada resep karena variasi dari beberapa jenis nasi goreng tergantung pada kreativitas individu yang memasaknya. Bahan-bahan seperti sosis, ayam, udang, cumi-cumi, dapat dikreasikan SasaCooks sesuai selera.\r\n\r\n \r\n\r\nNah itu dia 4 tips memasak nasi goreng agar rasanya seenak buatan resto. Nasi goreng yang lezat, pastinya bikin nafsu makan semakin mantap! Tertarik untuk mencoba, SasaCooks? Intip resep yang satu ini nih. Dijamin rasanya pas dan bikin nafsu makan semakin mantap!\r\nhttp://www.kreasisasa.com/sasa-recipe/nasi-goreng-jawa-larasa', '2018-07-04', 'ded8e9dd3809c87ae9dd75a9c38d7531.jpg', 0),
(60, 7, 'Dedi Mulyadi Sebut Pilkada Jabar Akhiri Sukses Politik Citra\r\n', 'BANDUNG, KOMPAS.com - Ketua DPD Partai Golkar Jawa Barat Dedi Mulyadi, menyebutkan fenomena baru muncul di pemilihan gubernur Jawa Barat tahun ini. Yakni, berakhirnya tren politik citra di kalangan masyarakat yang ampuh selama beberapa dekade dan beralih kepada politik gerilya teritorial langsung ke masyarakat. Politik gerilya teritorial sendiri adalah pemakaian jaringan darat yang mengakar dan mampu mendapatkan suara lebih banyak. “Di Pilgub Jabar ini, survei banyak yang meleset. Analisis pakar banyak yang meleset. Artinya, ada perubahan fenomena, politik citra berubah menjadi politik gerilya teritorial. Ini harus diwaspadai Partai Golkar di Pilpres 2019, termasuk partai lain pengusung Pak Jokowi,” jelasnya, Sabtu (30/6/2018). Selama ini, posisi Jawa Barat selalu menjadi magnet dan percontohan bagi pelaksanaan pemilihan presiden yang akan dilaksanakan setahun lagi. Apalagi daerah ini memiliki jumlah pemilih paling besar dibandingkan dengan provinsi lainnya. Baca juga: Dedi Mulyadi Tetap Blusukan ke Warga meski Kalah di Pilkada Jabar Versi Quick Count Jumlah pemilih sebesar ini tentu saja menjadi incaran para calon presiden di Tahun 2019. Semua calon presiden dipastikan ingin menjadikan Jawa Barat sebagai basis pemilihnya demi insentif elektoral. Sesuai dengan pengalamannya selama mengikuti Pilgub Jabar kemarin. Pada survei sebelum hari pencoblosan, pasangan Rindu diprediksi akan bersaing ketat dengan pasangan Duo DM. Akan tetapi, prediksi tersebut jauh dari kenyatannya. Pasangan Sudrajat-Syaikhu menyalip perolehan suara Duo DM. “Anda bayangkan, mohon maaf, elektabilitas di awal rendah, lalu naik ke 10 persen. Kemudian, loncat ke 15 persen sampai akhirnya 28 persen saat pemilihan. Ini bukti tren citra yang kemudian beralih ke gerilya teritorial,” kata Dedi. Terhadap fenomena tersebut Dedi menyebutkan bahwa terdapat gelombang peralihan pilihan politik seminggu jelang pemilihan berlangsung Gubernur dan Wakil Gubernur Jawa Barat. “Artinya, ada pergerakan besar dengan strategi yang ampuh, menyasar teritorial dengan cara bergerilya. Sehingga, akibatnya mengubah konstelasi Pilgub Jabar,” sebutnya. Gelombang peralihan dukungan itulah yang mengakibatkan ceruk suara Duo DM tergerus sampai hari pencoblosan. Karakteristik pemilih Deddy Mizwar dan Dedi Mulyadi memang berbeda. Dedi mengatakan, Deddy Mizwar memiliki basis pemilih yang banyak beririsan dengan Partai Keadilan Sejahtera (PKS). Pasalnya Deddy didukung oleh partai berbasis pemilih Islam itu saat berpasangan dengan Ahmad Heryawan di Pilgub 2013. Awalnya PKS sendiri pernah mewacanakan untuk mendukung Deddy Mizwar dengan Ahmad Syaikhu untuk Pilkada Jabar tersebut. Baca juga: SBY dan Dugaan Operasi Intelijen Jelang Pilkada Sementara itu lanjut Dedi, dirinya memiliki basis pemilih tradisional yang kuat. Pemilih tersebut telah terpapar sosialisasi kemajuan Purwakarta. Hal itu dibuktikan dengan dominasi Dedi Mulyadi di Purwakarta, Subang dan Karawang. Selain itu, pinggiran Kabupaten dan Kota Bekasi pun menjadi basis pria yang lekat dengan iket Sunda makutawangsa itu. “Ada kutub pemilih yang berbeda antara saya dengan Pak Demiz. Pemilih Pak Demiz banyak beririsan dengan PKS. Juga terkait partai pengusung Pak Demiz, mungkin belum sejalan dengan konstelasi Pilpres 2019. Sehingga, basis elektoral ini yang mengalihkan dukungan,” katanya. Manuver SBY Suara pengalihan dukungan tersebut menurut Dedi terjadi di Debat Publik II Pilgub Jabar di Depok Jawa Barat. Saat itu, pasangan Sudrajat-Syaikhu memperlihatkan kaus bertuliskan #2019GantiPresiden. Kondisi itu sebut dia, semakin diperparah dengan manuver Ketua Umum Partai Demokrat Soesilo Bambang Yudhoyono. Dalam konferensi pers di Kota Bogor, SBY menyebut bahwa Pj Gubernur Jawa Barat M Iriawan menggeledah rumah dinas wakil gubernur. “Dalam posisi ini, kami paling dirugikan. Suara kami tergerus hingga 15 persen,” ucapnya. Di Pilpres 2019 mendatang, Partai Golkar tempat Dedi Mulyadi berkiprah, mengusung Joko Widodo. Perbedaan ceruk suara inilah yang mengakibatkan basis elektoral pasangan Duo DM tidak solid. Meski begitu, Dedi mengaku bahagia. Sebab, di tengah gelombang isu yang menyerang, basis tradisional miliknya tetap terjaga dengan baik. “Saya bahagia karena basis saya tidak hancur. Kalau dulu suara saya 15 persen, sekarang ada di angka 25 persen. Di Pilgub Jabar ini sekaligus menjadi alat ukur bagi peta kekuatan kami menyongsong Pilpres 2019,” tuturnya.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Dedi Mulyadi Sebut Pilkada Jabar Akhiri Sukses Politik Citra\", https://regional.kompas.com/read/2018/06/30/10340001/dedi-mulyadi-sebut-pilkada-jabar-akhiri-sukses-politik-citra.\r\nPenulis : Kontributor Tasikmalaya, Irwan Nugraha\r\nEditor : Erlangga Djumena', '2018-07-04', '3931140714.jpg', 0),
(61, 6, 'Tempat-Tempat Menarik yang Tidak Boleh Anda Lewatkan Jika Berkunjung ke Dubai', '\r\n\r\n    HomeLifestyleTravel\r\n\r\nTempat-Tempat Menarik yang Tidak Boleh Anda Lewatkan Jika Berkunjung ke Dubai\r\nLiputan6.comLiputan6.com\r\n\r\n02 Jul 2018, 10:30 WIB\r\n\r\n    0\r\n\r\n15\r\nPertunjukan Laser Burj Khalifa\r\nPertunjukan sinar laser dari menara tertinggi di dunia, Burj Khalifa, pada malam perayaan Tahun Baru di Dubai, 31 Desember 2017. Burj Khalifa bermandikan sinar laser menyilaukan dalam gerakan dinamis yang disinkronkan dengan musik. (Giuseppe CACACE/AFP)\r\n\r\nLiputan6.com, Jakarta Berusaha menemukan destinasi liburan keluarga yang dapat membuat semua orang bahagia bukanlah hal yang mudah, tetapi jika Anda mencari tempat dengan ragam budaya, pantai, makanan lezat dan hiburan menyenangkan, maka Dubai bisa jadi pilihan.\r\n\r\nMeskipun kota ini terkenal karena kemewahan dan pesona serta kehidupan malamnya, Dubai juga menawarkan banyak kegiatan yang ramah keluarga mulai  dari pemandangan yang luar biasa hingga taman hiburan.\r\n\r\nBaca Juga\r\n\r\n    Sewakan Rumah Saat Kejuaraan Tenis, Warga Wimbledon dapat Raup Penghasilan Puluhan Juta Rupiah\r\n    6 Fakta tentang Okinawa Jepang yang Perlu Anda Ketahui\r\n    Destinasi Traveling Terbaik untuk Berselancar di Dunia Selama Musim Panas Ini\r\n\r\nDubai juga menjadi surganya bagi Anda yang gemar belanja karena dikenal sebagai rumah mal terbesar di dunia. Belum lagi hotel mewah dan restoran epik yang bisa ditemukan di seluruh penjuru kota.\r\n\r\n \r\n1 dari 3 halaman\r\nDipenuhi Gedung-Gedung Pencakar Langit\r\nHotel Gevora Dubai\r\nPenampakan Hotel Gevora (tengah), yang menjadi hotel tertinggi di dunia, di Sheikh Zayed Road, Dubai, Minggu (11/2). Hotel ini menyediakan empat restoran, kolam renang terbuka, fasilitas Jacuzzi, klub kesehatan, spa mewah, dan gimnasium. (KARIM SAHIB/AFP)\r\n\r\nDubai dipenuhi dengan beberapa gedung pencakar langit yang sangat mengesankan tetapi ada satu bangunan yang paling menonjol yang tentunya sudah dikenal oleh banyak orang di dunia, yakni Burj Khalifa. Bangunan tertinggi di dunia ini terdiri dari 124 lantai yang akan membuat Anda berdecak kagum saat menikmati pemandangan kota.\r\n\r\nYang juga patut dikunjungi adalah salah satu atraksi kota terbaru, The Frame, bangunan dengan tinggi 150 meter yang berbentuk bingkai terbesar di dunia. Puncak dari bangunan ini menjadi tujuan utama para wisatawan, yaitu jembatan penghubung sepanjang 93 meter yang alasnya terbuat dari kaca.\r\n\r\nNamun jika Anda tertarik mempelajari sejarah dan budaya, Anda bisa menambahkan Grand Mosque ke dalam daftar perjalanan Anda. Selain arsitekturnya yang indah, juga banyak artefak yang tidak boleh Anda lewatkan.\r\n\r\nJangan lewatkan untuk mengunjungi Dubai Creek di mana Anda akan menemukan banyak feri tradisional  dan Dubai Marina yang merupakan rumah bagi sejumlah restoran, butik dan kafe tepi pantai.\r\n\r\nTak lupa mengunjungi Dubai Mall, salah satu mal terbesar dan terlengkap di dunia mulai dari butik mewah hingga toko-toko yang ramah kantong.\r\n\r\n \r\n2 dari 3 halaman\r\nSejumlah Tempat Wisata Ramah Keluarga\r\n\r\nSelain klub-klub malam ikonik dan butik-butik mewah, untungnya Dubai memiliki beberapa tempat wisata yang cukup ramah keluarga. Orang dewasa yang ingin menjelajahi toko-toko di Dubai Mall juga dapat menemukan cara untuk menghindari kebosanan anak-anak dengan berbagai wahana yang ditawarkan seperti gelanggang es, akuarium, dan Kidzania. Lalu juga ada berbagai taman hiburan menarik, seperti Riverland, Legoland, Legoland Water Park, Bollywood Parks, dan Motiongate.\r\n\r\nIngin memanjakan diri dengan bersantai setelah berhari-hari mengeksplor kota? Dubai juga memiliki beberapa pantai yang sangat indah, salah satunya Jumeirah Beach yang tidak pernah gagal menyapa pelancong berkat perairannya yang memanjakan mata.', '2018-07-04', 'burjkalifa.jpg', 0),
(62, 7, 'Jokowi dan Mahathir Bicarakan soal Mengatasi Kelompok Politik yang Tak Terima Kekalahan\r\n\r\n', 'BOGOR, KOMPAS.com - Presiden Joko Widodo dan Perdana Menteri Malaysia Mahathir Mohamad berbincang tentang persoalan politik dalam negeri saat bertemu di Istana Presiden Bogor, Jumat (29/6/2018). \"Kami berbincang mengenai cara-cara mengatasi masalah politik dalam negara demokrasi ini,\" ujar Mahathir dalam pernyataan pers bersama di penghujung kunjungan kenegaraannya. Baca juga: Bertemu Mahathir, Megawati Bergurau Tanya Strategi Kemenangan Pilpres Malaysia Ia melanjutkan, salah satu bentuk persoalannya adalah kelompok politik yang hanya siap menang namun tidak menerima kekalahan. \"Satu daripada masalah yang kita lihat, berlaku di negara yang baru terima demokrasi adalah, cuma ingin menang mereka. Tak mau kalah sama sekali,\" ujar dia. \"Kalau kalah, diadakan demonstrasi, diadakan strike, diadakan huru hara,\" lanjut dia. Baca juga: Setelah Bertemu Jokowi, Mahathir Bersua Megawati Menurut dia, kelompok politik yang demikian berarti belum dewasa dalam berdemokrasi. Pria yang kini berusia 92 tahun tersebut menegaskan, dalam sebuah kontestasi politik tentu ada yang menang dan yang kalah. Kelompok yang kalah, lanjut dia, harus menerima kekalahan. Apabila ingin bertarung lagi di dalam kontestasi politik berarti harus menunggu momentum yang tepat terlebih dahulu. Baca juga: Mahathir Janji Beri Anak-anak TKI di Malaysia Pendidikan Layak Mahathir pun berharap agar Indonesia dan Malaysia harus saling mendukung dalam hal kedewasaan politik. \"Hari ini kita sibuk memulihkan negara kita seperti semula. Insya Allah ini akan kita teruskan dengan dasar-dasar, terutama dengan luar negeri di mana yang diutamakan adalah persahabatan dengan negara Jiran Indonesia,\" ujar dia.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Jokowi dan Mahathir Bicarakan soal Mengatasi Kelompok Politik yang Tak Terima Kekalahan\", https://nasional.kompas.com/read/2018/06/29/19085771/jokowi-dan-mahathir-bicarakan-soal-mengatasi-kelompok-politik-yang-tak.\r\nPenulis : Fabian Januarius Kuwado\r\nEditor : Diamanty Meiliana', '2018-07-04', '926782125.jpg', 0),
(63, 7, 'Kalla: Saya Ingin Istirahat dari Dunia Politik\r\n\r\n', 'JAKARTA, KOMPAS.com - Wakil Presiden Jusuf Kalla mengatakan, sulit bagi dirinya untuk mencalonkan diri sebagai calon presiden pada Pemilu 2019, mengingat dirinya tidak memiliki partai politik untuk memenuhi ketentuan ambang batas presiden. \"Saya butuh 20 persen, seperti saya katakan tadi, saya tidak punya partai. Yang dimaksudkan \'dibutuhkan\' itu soal pemilunya, dan itu sulit bagi saya. Jadi sekali lagi saya ingin cukuplah, sekarang gilirannya yang muda-muda,\" kata Wapres Jusuf Kalla usai menjadi pembicara dalam \"Jakarta Foreign Correspondents Club\" (JFCC) di Hotel Ayana Midplaza Jakarta, Kamis (28/6/2018), seperti dikutip Antara. Baca juga: MK Tolak Memproses Uji Materi Penggemar Jusuf Kalla Terkait keinginan Partai Demokrat untuk meminang Jusuf Kalla sebagai calon presiden alternatif, Wapres mengatakan, hal itu belum menjadi pertimbangan. Ia mengaku ingin beristirahat dari dunia politik. \"Itu soal lain, tapi saya ingin istirahat,\" ucapnya. Nama Jusuf Kalla menjadi pertimbangan bagi Partai Demokrat untuk diusung dalam Pemilihan Umum 2019. Baca juga: MK Tolak Gugatan Masa Jabatan Presiden dan Wapres, Ini Kata Jusuf Kalla Partai Demokrat membuka peluang diskusi di internal partai untuk meminang Jusuf Kalla. Peluang tersebut terlihat pada saat pertemuan antara Wapres Jusuf Kalla dan Ketua Umum Partai Demokrat Susilo Bambang Yudhoyono (SBY) pada Senin malam (25/6). Sekretaris Jenderal Partai Demokrat Hinca Panjaitan mengatakan tidak menutup kemungkinan untuk memunculkan wacana pasangan Jusuf Kalla - Agus Harimurti Yudhoyono (AHY) pada Pilpres mendatang. Pengalaman kepemimpinan SBY - JK di Kabinet Indonesia Bersatu pada 2004 - 2009 lalu menjadi salah satu pertimbangan untuk Partai Demokrat menggandeng kembali Jusuf Kalla.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Kalla: Saya Ingin Istirahat dari Dunia Politik\", https://nasional.kompas.com/read/2018/06/28/16435721/kalla-saya-ingin-istirahat-dari-dunia-politik.\r\n\r\nEditor : Sandro Gatra', '2018-07-04', '3414861694.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `gender` varchar(1) NOT NULL,
  `tempatlahir` varchar(20) NOT NULL,
  `tanggallahir` date NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `status`, `gender`, `tempatlahir`, `tanggallahir`, `alamat`, `pekerjaan`) VALUES
(2, 'admin', 'admin@myblog.com', '21232f297a57a5a743894a0e4a801fc3', 0, 'l', 'jakarta', '1990-10-01', 'jakarta utara', 'pegawai swasta'),
(3, 'nauval', 'nauval@myblog.com', '21232f297a57a5a743894a0e4a801fc3', 0, 'l', 'jakarta', '2014-12-10', 'jakarta utara', 'pegawai swasta'),
(4, 'Syaiyidi hafajoh', 'saidi.icho2512@gmail.com', 'c726864f8fa106213b8f811058ec9d73', 0, '', '', '0000-00-00', '', ''),
(5, 'udin', 'udin@udin.com', '6bec9c852847242e384a4d5ac0962ba0', 0, '', '', '0000-00-00', '', ''),
(6, 'julio', 'julio@gmail.com', '8074f0d0c65d5c951bbdbf5f0e8ea815', 0, '', '', '0000-00-00', '', ''),
(10, 'dini', 'dini@gmail.com', '3134658fe522c8e1290016126d3a7b60', 0, 'P', 'jakarta', '2000-01-01', 'jakarta utara', 'pegawai swasta'),
(11, 'shidqi', 'shidqi@myblog.com', '5d3c184707b4ea82a412512218eb2275', 0, 'L', 'Jakarta', '2018-07-05', 'Jakarta', 'Mahasiswa'),
(12, 'nauvalshidqi', 'nauvalshidqi@myblog.com', '21232f297a57a5a743894a0e4a801fc3', 0, 'L', 'Jakarta', '2018-07-10', 'Jakarta Pusat', 'Mahasiswa'),
(13, 'Shidqi Nauval', 'shidqi@blogyai.com', '21232f297a57a5a743894a0e4a801fc3', 0, 'L', 'Jakarta', '2018-07-06', 'Jl Harapan Mulia', 'Mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
