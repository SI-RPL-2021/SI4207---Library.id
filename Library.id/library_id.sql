-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2021 at 05:01 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library.id`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT '0',
  `buku` varchar(255) NOT NULL DEFAULT '0',
  `judul` varchar(255) NOT NULL DEFAULT '0',
  `pengarang` varchar(255) NOT NULL DEFAULT '0',
  `preview` text NOT NULL,
  `total_peminjam` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `foto`, `buku`, `judul`, `pengarang`, `preview`, `total_peminjam`, `created_at`) VALUES
(17, '443155sampul-novel-dracula_169.jpeg', '581905Penerjemahan_Novel_Dracula_Karya_Bram_Stoker_dari_.pdf.libraryid', 'Dracula karya Bram Stoker', 'karya penulis Irlandia, Bram Stoker', 'itulah yang diakui Stoker dalam Makt Myrkranna, sebuah versi lain dari Dracula dalam bahasa Islandia yang kemudian dikenal dalam bahasa Inggris sebagai Powers of Darkness.\r\n\r\nKisah Makt Myrkranna aslinya terbit secara berseri melalui koran Fjallkonan dari 13 Januari 1900 hingga 20 Maret 1901, beberapa tahun setelah novel Dracula karangan Stoker terbit di Inggris.\r\n\r\n\r\nNamun yang menarik, Makt Myrkranna yang dalam versi buku disebut diterjemahkan oleh pemimpin redaksi Fjallkonan, Valdimar Asmundsson, itu tidak secara persis mirip dengan novel Dracula seperti pada kisah terjemahan lainnya.\r\n\r\nMakt Myrkranna memiliki konsep cerita yang lebih luas dibanding perjalanan Jonathan Harker menuju kastil Count Dracula, atau surat-menyurat Wilhelmina \'Mina\' Harker dengan Lucy Wesrenra, atau pun catatan lainnya seperti pada novel Dracula.\r\n\r\n', 0, '2021-06-12 14:30:44'),
(18, '560715Harry_Potter_and_the_Cursed_Child_Script_Book_Cover.jpg', '447580Harry-Potter-and-the-Cursed-Child.pdf.libraryid', 'Harry Potter and the Cursed Child', 'J.K Rowling', ' Ia tak menutup cerita dengan kematian tokoh utamanya.\r\n\r\nCara ini persis penutup sebuah dongeng, “Dan mereka hidup bahagia selamanya.”\r\n\r\nMasalahnya, ketika kita begitu mencintai sebuah dongeng atau cerita, akhir yang membahagiakan saja tak cukup. Ibarat menanti kabar saudara yang tinggal jauh di seberang pulau, kita ingin mendengar cerita terbaru mereka, tokoh-tokoh rekaan yang kita sayang. Tak terkecuali Harry Potter, Hermione, dan Ron rekaan J.K. Rowling.', 0, '2021-06-12 14:31:43'),
(19, '357245religi.PNG', '524indonesian-58.pdf.libraryid', 'Tiga Landasan Utama', 'Syaikh Muhammad At-Tamimi', 'Namun, tentu saja yang bisa menjawab tiga pertanyaan ini adalah yang punya keyakinan yang benar kepada Allah, Islam, dan Nabi Muhammad shallallahu ‘alaihi wa sallam. Tentu saja caranya adalah dengan mengilmui tiga hal tersebut, mengamalkannya, mendakwahkannya, serta bersabar dalam berilmu, beramal, dan berdakwah.\r\n\r\nSyaikh Shalih bin ‘Abdul ‘Aziz bin Muhammad Alu Syaikh hafizhahullah menyatakan bahwa kitab Tsalatsatul Ushul adalah kitab penting untuk dipelajari dan para ulama sangat perhatian sekali terhadap kitab tersebut dengan memberikan penjelasan. Kitab ini dijadikan awal kitab yang dijelaskan. Apa alasannya?\r\n\r\nKesimpulan dari penjelasan Syaikh Shalih Alu Syaikh hafizhahullah, bahwasanya kitab ini adalah kitab ringkasan. Dalam belajar diawali dari mempelajari kitab-kitab sederhana. Itu alasan pertama. Alasan kedua, kitab ini berisi pertanyaan alam kubur. Itulah yang dikenal dengan tiga landasan utama, yaitu mengenal Allah, mengenal Islam dengan dalil, dan mengenal Nabi shallallahu ‘alaihi wa sallam. Tiga hal ini termasuk landasan tauhid dan agama.\r\n\r\n\r\n', 0, '2021-06-12 14:32:52'),
(21, '79369Sang Pangeran Kecil - the Little Prince.jpg', '402142toaz.info-pangeran-kecil-le-petit-prince-pr_733bcd07b968690ed57df8ff68895a84.pdf.libraryid', 'Le Petit Prince ( Pangeran Kecil)', 'Shinta Nugraha Mughni', 'Buku karangan seorang penulis berkebangsaan perancis, Antoine de Saint-Euxpery. Bercerita tentang sosok pangeran kecil yang mengembara ke enam planet lain sebelum tiba di bumi. Dalam pengembaraan Pangeran Cilik inilah penulis memberikan sindiran-sindiran lembut kepada pembaca tentang kehidupan-kehidupan manusia dewasa-modren yang terlalu sombong, serius dan membosankan.\r\n\r\nLe Petit Prince adalah sebuah bacaan yang sarat renungan dan penuh dengan filosofi kehidupan.\r\n\r\n', 1, '2021-06-12 14:39:27'),
(22, '195097Cosmos-PDF-Carl-Sagan-EnglishPDF-e1594671346336.jpg', '755009sagancosmos.pdf.libraryid', 'Cosmos - Carl Sagan', 'NEIl De GRASE TYSON', 'Buku tentang ilmu astronomi ini begitu asik untuk dibaca bagi para pemula. Carl Sagan mampu membuat pembacanya langsung terpikat dengan planet-planet, bintang, dan segala hal di jagat raya yang dipenuhi misteri.\r\n\r\nDi buku Cosmos ini, Carl Sagan mencoba berspekulasi bahwasannya bisa saja ada makhluk hidup di suatu planet di luar sana, karena begitu banyaknya planet-planet yang berkeliaran.\r\n\r\nDan juga Carl Sagan berharap untuk semua negara di Bumi ini membuat proyek besar untuk melakukan eksplorasi ke seluruh planet dibandingkan menghabiskan duit untuk membiayai peralatan perang. Sangat menarik buat kamu baca.', 0, '2021-06-12 14:41:47'),
(23, '98206mini_magick20190223-16957-1lc1g2c.png', '366559Richard_Dawkins_The_Selfish_Gene.pdf.libraryid', 'The Selfish Gene - Richard Dawkins', 'Richard Dawkins', 'Buku yang sangat wajib dibaca ini ditulis oleh seorang ahli biologi, Richard Dawkins. The Selfish Gene menjelaskan sebuah topik yang sangat menarik, yaitu kenapa organisme selalu berusaha mempertahankan hidupnya?\r\n\r\nRichard Dawkins dapat menjelaskan itu semua. Ia menjelaskan bahwa kita semua memiliki sebuah gen yang disebut, gen egois. Bagaimana gen tersebut berusaha mempertahankan dirinya dari evolusi yang kejam.\r\n\r\nMaka dari itu semua makhluk hidup berusaha mempertahankan spesiesnya, tak kecuali dengan binatang yang berotak, manusia.', 1, '2021-06-12 14:43:38'),
(24, '678548the-origin-of-species-pdf-charles-darwin.webp', '615276Origin_of_Species.pdf.libraryid', 'On the Origin of Species - Charles Darwin', 'Charles Darwin', 'Buku kontroversial yang satu ini, tak bisa dipungkiri lagi sangat berperan besar terhadap segala bidang ilmu sains. Charles Darwin benar-benar dikecam setelah menerbitkan buku ini, berdasarkan observasi dan penelitiannya.\r\n\r\nKalau di agama kita diajarkan bahwa manusia berawal dari Adam dan Hawa, yang memiliki jiwa dan bentuk tubuh tetap. Akan tetapi di On the Origin of Species ini membuktikan bahwa manusia berasal dari kera, yang terus berevolusi hingga bentuk manusia sekarang.\r\n\r\nWalaupun kamu lebih percaya dengan apa yang dikatakan oleh agama, akan tetapi apa salahnya membaca hasil pemikiran Charles Darwin ini, yang memiliki pembuktian dan dipakai dalam pelajaran sains di sekolah.', 0, '2021-06-12 14:45:05'),
(25, '417516download (2).jpg', '901835sosulski-kristen-data-visualization-made-simple_-insights-into-becoming-visual-2019-routledge.pdf.libraryid', 'Data Visualization Made Simple ', 'Kristen Sosulski', 'Sebagai seorang mahasiswa ilmu komputer, salah satu hal yang kemungkinan besar akan kamu tangani sepanjang hidup adalah data. Buku ini sangat berguna bagi mereka yang ingin berspesialisasi dalam ilmu data atau bahkan data besar. Buku ini memberikan deskripsi rinci tentang perangkat lunak terbaik, bahasa pemrograman dan bahkan platform untuk visualisasi data. Buku ini juga akan memberimu beberapa wawasan kritis tentang metode eksplorasi data. Dalam buku ini, kamu akan membaca lebih dari 30 jenis bagan dan jenis wawasan data yang mereka gambarkan. Kamu juga akan belajar tentang tips dan taktik yang efektif untuk menyampaikan presentasi data.', 0, '2021-06-12 14:46:44'),
(26, '877678download (3).jpg', '792436The_Soul_of_a_New_Machine.pdf.libraryid', 'The Soul of a New Machine', 'Tracy Kidder', 'Sebagai mahasiswa ilmu komputer, akan lebih afdol jika kamu mengenal sejarah komputer. Itulah isi buku ini, salah satu buku terbaik yang mencoba memberikan gambaran yang jelas tentang sejarah komputer. Tracy Kidder telah memasukkan unsur-unsur drama dan komedi dalam buku untuk membuatnya lebih menarik sehingga tidak menjadi buku ilmu komputer yang membosankan. Buku ini juga akan menanamkan beberapa keinginan untuk berkontribusi pada pertumbuhan teknologi.', 0, '2021-06-12 14:47:54'),
(27, '8647551WUki4AtYL._SX353_BO1,204,203,200_.jpg', '510652Bouquin systèmes d_exploitations.pdf.libraryid', 'Structured Computer Organization', ' by Andrew S Tanenbaum', 'Kamu harus mempertimbangkan membaca buku ini, karena buku ini akan memberimu tampilan grafis yang menarik tentang cara kerja komputer. Informasi ini penting bagi siapa saja yang mengejar ilmu komputer terlepas dari bidang spesialisasi mereka. Buku ini dimulai dengan mengajarkanmu tentang transistor, gerbang, bagian dari prosesor, dan cara kerja prosesor. Informasi ini diterbitkan dengan cara yang disederhanakan yang bahkan dapat dipahami oleh seseorang yang tidak mengejar ilmu komputer.', 0, '2021-06-12 14:50:34'),
(28, '460470download (4).jpg', '718425taussig_devil_commodity.pdf.libraryid', 'The Devil and Commodity Fetishism in South America, Michael Taussig', 'Michael T.taussig', '\r\nKeputusan memilah 10 buku antropologi ini berdasarkan studi literatur yang paling mengesankan saya secara pribadi yang telah belajar antropologi selama lebih dari 10 tahun. Sepuluh buku ini juga sering menjadi bahan perbincangan dikalangan akademisi dan kolega, baik sejak di strata satu, antropologi UGM, maupun rekan-rekan doktoral saya di Amerika.\r\n\r\nSelain itu, sepuluh buku paling berpengaruh ini tidak saja sering dikutip dalam berbagai penelitian, namun juga telah membangun teori-teori dalam antropologi, sekaligus mendobrak berbagai pengetahuan umum yang selama ini sering kita terima begitu saja.\r\n\r\nThe Devil and Commodity Fetishism in South America, Michael Taussig\r\nJika Gabriel Garcia Marquez adalah salah satu sastrawan paling terkemuka di Amerika Latin, maka Buku Taussig ini adalah seri antropologi yang menyerupai Marquez. Sudut pandang yang digunakan oleh Taussig seperti “magic realism”nya Marquez. Taussig menggabungkannya dengan ide Marx tentang “commodity fethisism” ke dalam dunia yang sangat surealis. Buruh (labor) adalah pekerjaan baru yang muncul seiring dengan munculnya perkebunan di Columbia dan pertambangan di Bolivia. Bagi orang Bolivia, pasar dan kapitalisme adalah magic, karena ia menyebabkan proses pemiskinan yang tidak dapat dilihat (invisible) namun mereka merasa akibat-akibatnya. Semenjak menjadi buruh, orang-orang Bolivia, Columbia sangatlah terasing. Mereka tidak lagi mempunyai tanah seperti sebelumnya. Jikapun ada, tanaman yang ditanam bukan lagi untuk dimakan melainkan untuk dijual. Mereka terjerat hutang, hidup secara individualis, konsumtif, dan mengejar komoditas baru yang tak pernah usai jika terus diburu. Komoditas baru tersebut bernama uang. Hasrat untuk memburunya adalah bagian dari setan tersebut. Rasa tak pernah puas terhadap komoditas uang adalah sumber baru yang menyebabkan kaum buruh merasa dirinya selalu miskin.', 0, '2021-06-12 14:52:21'),
(29, '31367981r+5ZoGBsL.jpg', '755330Harris_Marvin_Cows_Pigs_Wars_and_Witches_The_Riddles_of_Culture_1974.pdf.libraryid', 'Cows, Pigs, Wars and Withces, Marvin Harris', 'Marvin harris ', 'Buku ini menunjukkan bahwa Marvin Harris bukan seorang Marxis ortodoks. Ia menggabungkan pendekatan ekologi dengan kepercayaan/agama. Yang paling mengesankan dalam buku ini adalah soal teka-teki kebudayaan mengapa orang di Timur Tengah mengharamkan/membenci babi, sedangkan orang di pegunungan Papua tidak mengharamkan/menyukai babi. Harris melakukan penjelasan melalui pendekatan ekologi. Di Timur Tengah, babi adalah binatang yang jorok, selalu mengeluarkan keringat dan selalu berkubang di lumpur karena suhu yang panas. Babi juga tidak mempunyai fungsi seperti kambing. Ia tidak menghasilkan susu (tidak ada susu babi) dan babi adalah binatang yang tidak bisa diajak melakukan migrasi jauh (pernah lihat film-film kisah nabi kan, pasti diikuti oleh gembala kambing-kambing disekitarnya, bukan babi). Sebaliknya, babi di Pegunungan Papua tidak mengeluarkan keringat karena suhunya tidak sepanas di Timur Tengah. Di dataran tinggi Papua, Babi menjadi simbol pertukaran ekonomi yang penting.', 1, '2021-06-12 14:55:22'),
(30, '597079download (7).jpg', '189572Graeber_David_Toward_an_Anthropological_Theory_of_Value.pdf.libraryid', 'Toward an Anthropoligcal Theory of Value, David Graeber', 'David Graeber', 'Ini adalah buku yang paling inovatif dalam membahas soal “teori nilai”. Selain menggabungkan berbagai penjelasan tentang apa itu nilai mulai dari pandangan Marx hingga kritik terhadap Pierre Bourdieu, buku ini juga mensuplai dengan berbagai kasus etnografi tentang hal-hal paling bernilai dalam pertukaran dan resiprositas . Graeber mendefinisikan nilai (value) sebagai sesuatu yang paling dihasrati/diinginkan oleh manusia.\r\n\r\nGraeber dengan gamblang mendefinisikan nilai dari tiga kacamata. Pertama, Kaum formalis Antropologis dan kaum libertarian melihat nilai ada pada objek barang, harta dan properti. Kedua, nilai juga ada pada hal-hal yang tidak bisa dilihat seperti relasi sosial, penghormatan, dan rasa kebahagiaan. Pandangan ini diusung oleh kaum sosialis dan substantive Antropologis. Ketiga, nilai juga dapat dilihat pada kata-kata, pidato dan bahasa, do’a, dzikir, jopa-japu dan sejenisnya. ', 0, '2021-06-12 14:56:34'),
(31, '73121722585534.jpg', '78800MaxHavelaarMilenial-AchmadSunjayadi-2019.pdf.libraryid', 'Max Havelaar ', 'karya Multatuli ', 'Buku yang satu ini bukan cuma bagus tapi bagus banget. Ga cuma bisa bawa lo seolah berada di Pulau Jawa abad-19, buku ini adalah buku yang mengubah pandangan orang-orang Belanda terhadap penjajahan yang dilakukan di Hindia Belanda pada masa itu. \r\n\r\nBuku ini juga bagus karena menyajikan informasi sejarah yang out of the box. Buat lo yang udah belajar di sekolah mungkin ngiranya penjajah itu jahat banget. Nah di Max Havelaar lo bakal disajiin cerita kalau ga semua orang Belanda itu jahat dan ga semua pribumi itu baik. Secara ga langsung buku ini juga ngajarin bahwa orang yang berpendidikan itu ga selalu tercerahan. \r\n\r\nMax Havelaar pertama kali diterbitkan pada tahun 1860. Dan fyi aja nih, Max Havelaar baru diterbitkan secara utuh dalam bahasa Indonesia pada tahun 1972 yang saat itu penerjemahannya dari Bahasa Belanda dilakuin sama salah satu tokoh sastra Indonesia, Hans Bague Jassin. ', 0, '2021-06-12 14:58:41'),
(32, '28984133277823.jpg', '297542hatta-jejak-yang-melampaui-zaman.pdf.libraryid', 'Seri Buku Tempo ', 'gie', 'Buku belajar sejarah selanjutnya adalah seri yang beberapanya gue punya karena emang seru banget plus layak dikoleksi. Seri tokoh tempo ini ngebahas tokoh-tokoh sejarah secara pribadinya loh. Lo akan dibawa buat kenalan sama tokoh-tokoh sejarah dari sisi kehidupan pribadinya. Pas gue baca seri tokoh Tempo yang bahas Sutan Sjahrir barulah gue tau kalau ternyata Bung Kecil, sapaan Sutan Sjahrir, wafatnya di Zurich, Swiss. Gue juga jadi tau kalau ternyata Bung Tomo selepas peristiwa 10 November menjalani kehidupan yang bisa dibilang biasa banget. Dan masih ada banyak lagi tokoh-tokoh sejarah lain kayak misalnya Bung Karno, Bung Hatta, Soe Hok Gie, Muhammad Yamin, sampai tokoh-tokoh seperti Yap Thiam Hien. ', 0, '2021-06-12 15:00:46'),
(33, '542569unnamed.jpg', '806878TheultimateHitchhikersGuide.pdf.libraryid', 'The Hitchhiker’s Guide to the Galaxy\'', ' oleh Douglas Adams', 'uku ini memadukan komedi dengan fiksi ilmiah dan telah mengumpulkan pengikut yang disukai di seluruh dunia. Pada dasarnya bumi dihancurkan untuk memberi jalan bagi jalan bebas hambatan galaksi dan pada detik terakhir.Arthur Dent sebagai karakter utama dalam buku dicabut dari planet oleh temannya Ford Prefect yang ternyata adalah alien. Arthur belajar banyak tentang alam semesta dan kita bisa bergabung dengannya melalui perjalanannya.', 0, '2021-06-12 15:04:21'),
(34, '83734271Xygne8+qL.jpg', '983630021.pdf.libraryid', 'Zero to One ', 'ditulis oleh Peter Thiel', 'Masih tentang bisnis startup yang isinya juga bisa diaplikasikan pada bisnis lain, buku ini dibuat oleh co-founder PayPal, sebuah perusahaan penyedia jasa transfer uang secara elektronik yang sangat terkenal.Buku ini bercerita tentang filosofi bisnis. Pembaca akan diajarkan cara menghasilkan ide-ide bisnis baru yang bahkan dirinya belum pernah menduga sebelumnya.\r\n\r\nBuku ini juga mendapat pujian dari Mark Zuckerberg, CEO Facebook. New York Times juga mencatat buku ini sebagai salah satu yang terlaris kategori bisnis serta kewirausahaan.\r\n\r\n', 0, '2021-06-12 15:07:05'),
(35, '143789download (8).jpg', '111494TheMagicofThinkingBig.pdf.libraryid', 'Magic of Thinking Big ', 'ditulis oleh David Schwartz', 'Buku ini sangat bagus untuk dibaca para pengusaha khususnya para pemula atau pebisnis yang ingin lebih sukses lagi. Buku ini bercerita tentang ilmu dasar tentang impian yang besar. Pastinya, setiap pengusaha berangkat dari impian yang besar.\r\n\r\nKemudian, ada berbagai hal yang dibahas termasuk cara untuk tetap kuat dalam menghadapi berbagai masalah serta tantangan dalam dunia bisnis. Tentu, bisnis tidak selamanya akan dalam keadaan menguntungkan.', 0, '2021-06-12 15:08:17'),
(36, '33549751MxjDxFU7L.jpg', '157309The Monk and the Riddle_ The Art of Creating a Life While Making a Living  - PDF Room.pdf.libraryid', 'The Monk and the Riddle', 'oleh Randy Komisar', 'Buku ini membahas tentang bagaimana pentingnya memulai bisnis serta menyeimbangkan bisnis dengan kehidupan Anda.\r\n\r\nPenting memang agar waktu untuk bisnis  dan waktu untuk Anda sendiri berjalan secara beriringan sehingga Anda akan menjadi seorang pengusaha yang bisa menikmati hidup.\r\n\r\nAda juga pembahasan tentang tantangan dalam dunia bisnis serta bagaimana cara mengatasinya. Anda akan merasa bahwa menjadi pengusaha memang harus bisa membagi waktu antara bisnis dan hidup Anda sendiri terutama keluarga.', 0, '2021-06-12 15:09:50'),
(37, '80942181h2gWPTYJL.jpg', '529699Becoming-Michelle-Obama.pdf.libraryid', 'Becoming', ' - Michelle Obama', 'Ria Iskandar\r\nby: RIA ISKANDAR / 2019-07-30 20:00:00\r\n10 Judul Buku Biografi yang Mampu Mengubah Hidup Anda\r\nInspirasi dapat datang darimana saja, beberapa cenderung mendapatkanya dari sisi visual di saat yang lain lebih menikmati audio. Namun, kali ini yang kita bahas adalah inspirasi yang datang dari kata-kata. Rangkaian kalimat yang menceritakan ulang sejumlah kisah deretan tokoh inspiratif yang sosoknya membawa pengaruh kepada dunia.\r\n\r\nBidangnya beragam, tetapi keragaman tersebut dipersatukan oleh sebuah persamaan. Persamaan yang bercerita mengenai tokoh-tokoh berani yang tidak takut menyuarakan suaranya. Di manapun mereka berada, baik yang berasal dari dunia politik, musik, hingga akademis, seluruh kisah hidup dari para tokoh terpilih yang diulas di sejumlah judul buku berikut tidak hanya berujung sebagai sebuah makna karya literatur.\r\n\r\nRELATED STORY\r\nSimak 5 Drama Korea yang Perlu Diantisipasi di Bulan Maret Ini\r\nSimak 5 Drama Korea yang Perlu Diantisipasi di Bulan Maret Ini\r\n\r\nCerita mereka realita, bukan fiktif apalagi omongan belaka yang dituangkan si pengarang melalui tulisannya. Seluruh alur cerita buku telah terjadi di kehidupan nyata, inspirasi yang ingin mereka bagikan kepada dunia lewat cerita hidupnya masing-masing. Mari simak 10 judul buku biografi terbaik kurasi Bazaar.\r\n\r\n \r\n\r\n1. Becoming - Michelle Obama\r\n\r\nDapat dihitung dengan jari, seorang ibu negara yang juga membawa perubahan pada masa kepemimpinan pasangannya sebagai presiden. Salah satunya tentu Michelle Obama. Melalui buku berjudul Becoming, Anda dapat menyelami lebih lagi pemikiran seorang mantan ibu negara yang selamanya mendapat tempat di hati rakyat Amerika Serikat.', 0, '2021-06-12 15:11:33'),
(38, '910170Steve_Jobs_by_Walter_Isaacson.jpg', '692737isaacson2011stevejobs.pdf.libraryid', 'Steve Jobs ', 'Walter Isaac', 'Ria Iskandar\r\nby: RIA ISKANDAR / 2019-07-30 20:00:00\r\n10 Judul Buku Biografi yang Mampu Mengubah Hidup Anda\r\nInspirasi dapat datang darimana saja, beberapa cenderung mendapatkanya dari sisi visual di saat yang lain lebih menikmati audio. Namun, kali ini yang kita bahas adalah inspirasi yang datang dari kata-kata. Rangkaian kalimat yang menceritakan ulang sejumlah kisah deretan tokoh inspiratif yang sosoknya membawa pengaruh kepada dunia.\r\n\r\nBidangnya beragam, tetapi keragaman tersebut dipersatukan oleh sebuah persamaan. Persamaan yang bercerita mengenai tokoh-tokoh berani yang tidak takut menyuarakan suaranya. Di manapun mereka berada, baik yang berasal dari dunia politik, musik, hingga akademis, seluruh kisah hidup dari para tokoh terpilih yang diulas di sejumlah judul buku berikut tidak hanya berujung sebagai sebuah makna karya literatur.\r\n\r\nRELATED STORY\r\nSimak 5 Drama Korea yang Perlu Diantisipasi di Bulan Maret Ini\r\nSimak 5 Drama Korea yang Perlu Diantisipasi di Bulan Maret Ini\r\n\r\nCerita mereka realita, bukan fiktif apalagi omongan belaka yang dituangkan si pengarang melalui tulisannya. Seluruh alur cerita buku telah terjadi di kehidupan nyata, inspirasi yang ingin mereka bagikan kepada dunia lewat cerita hidupnya masing-masing. Mari simak 10 judul buku biografi terbaik kurasi Bazaar.\r\n\r\n \r\n\r\n1. Becoming - Michelle Obama\r\n\r\nDapat dihitung dengan jari, seorang ibu negara yang juga membawa perubahan pada masa kepemimpinan pasangannya sebagai presiden. Salah satunya tentu Michelle Obama. Melalui buku berjudul Becoming, Anda dapat menyelami lebih lagi pemikiran seorang mantan ibu negara yang selamanya mendapat tempat di hati rakyat Amerika Serikat.\r\n\r\n2. Steve Jobs - Walter Isaac\r\n\r\nJenius mungkin terlalu biasa, tetapi karakterlah yang menjadikan seorang Steve Jobs tidak akan pernah dilupakan. Walter Issac, penulis asal Amerika mengulas lengkap kisah kehidupan tokoh berjasa dalam kemajuan teknologi saat ini.', 1, '2021-06-12 15:12:38'),
(39, '75716591KnWUnK2WL.jpg', '99369IamMalala.pdf.libraryid', ' I am Malala: The Girl Who Stood Up For', 'Christina Lamb & Malala Yousafazai', 'Ditulis oleh tokoh utama sendiri dan seorang rekan penulis lainnya, saat membaca I am Malala: The Girl Who Stood Up For, seketika jiwa feminis akan muncul di hati. Resapi dan biarkan kisah hidup wanita inspiratif ini juga menginspirasi Anda yang membaca', 0, '2021-06-12 15:15:39'),
(40, '1886742c2a837c15406ed6dc91a363edcd9d8f.jpg', '309736romeo-and-juliet_PDF_FolgerShakespeare.pdf.libraryid', 'Romeo and Juliet (William Shakespeare)', 'Samuel Johnson', 'Ini merupakan salah satu karya buku penulis paling terkenal di dunia, yaitu William Shakespears. Romeo and Juliet begitu terkenal hingga banyak dipentaskan dalam berbagai seni drama, film, dan musikal.\r\n\r\nBuku ini ditulis pada awal karier Shakespears yang bercerita tentang sepasang kekasih, tetapi cinta mereka ditentang oleh keluarga masing-masing karena saling bermusuhan.\r\n\r\nDi Indonesia sendiri, buku ini telah diterjemahkan ke dalam bahasa Indonesia oleh Trisno Sumardjo.', 0, '2021-06-12 15:18:10'),
(41, '130523things-fall-apart-pdf-chinua-achebe-1-638.jpg', '470923things.pdf.libraryid', 'Things Fall Apart ', '(Chinua Achebe)', 'Buku pertama dari tiga novel Trilogi Afrika Chinua Achebe yang diakui secara kritis. Kisah klasik ini bercerita tentang pertemuan bencana besar Afrika dengan Eropa saat membangun kehadiran kolonial di benua tersebut.\r\n\r\nBuku ini dijual lebih dari 20 juta eksemplar dan diterjemahkan ke dalam 57 bahasa.', 0, '2021-06-12 15:19:43'),
(42, '55981051UQHGmwJvL.jpg', '66683The Odyssey.pdf.libraryid', 'Odyssey ', '(Homeros)', 'Buku Odyssey merupakan salah satu karya sastra Barat paling abadi dan penting. Kisah klasik ini mengisahkan perjalanan pulang Odysseus setelah perang yang berlangsung selama 10 tahun.', 0, '2021-06-12 15:21:12'),
(43, '526251Gadis Jeruk.jpg', '885944.libraryid', 'The Orange girl', 'Jostein Gaarder', 'Buku ini ditulis oleh pengarang yang sama dalam buku Dunia Sophie yaitu Joestein Gaarder. Sebenarnya hampir semua karangan beliau sarat dengan filsafat. Orange Girl bercerita tentang Georg Roed, seorang remaja berusia 15 tahun yang tinggal di Oslo. Alur ceritanya muncul ketika nenek Georg menemukan sebuah surat yang ditulis ayah Georg 11 tahun yang lalu beberapa saat sebelum meninggal. Surat tersebut ditujukan untuk Georg. Isi surat inilah yang kemudian dipaparkan dalam buku The Orange Girl dan menjadi inti cerita di dalamnya.\r\n\r\nPada akhirnya, Filsafat adalah cara cerdas bagi jiwa untuk tetap warasdan tumbuh berevolusi. Terutama ketika dunia makin sakit dan sistem nilai kian terdegradisi.', 0, '2021-06-12 15:25:19'),
(44, '529998covUD-214.jpg', '751022dunia-sophie.pdf.libraryid', 'Dunia Shopie', 'Shinta Nugraha Mughni', 'asdasd', 1, '2021-06-12 15:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_antropologi`
--

CREATE TABLE `ktgr_antropologi` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ktgr_antropologi`
--

INSERT INTO `ktgr_antropologi` (`id`, `id_buku`) VALUES
(2, 28),
(3, 29),
(4, 30);

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_biografi`
--

CREATE TABLE `ktgr_biografi` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ktgr_biografi`
--

INSERT INTO `ktgr_biografi` (`id`, `id_buku`) VALUES
(1, 37),
(2, 38),
(3, 39);

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_bisnis`
--

CREATE TABLE `ktgr_bisnis` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ktgr_bisnis`
--

INSERT INTO `ktgr_bisnis` (`id`, `id_buku`) VALUES
(1, 34),
(2, 35),
(3, 36);

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_fiksi`
--

CREATE TABLE `ktgr_fiksi` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ktgr_fiksi`
--

INSERT INTO `ktgr_fiksi` (`id`, `id_buku`) VALUES
(15, 17),
(16, 18),
(17, 40),
(18, 41),
(19, 42);

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_filsafat`
--

CREATE TABLE `ktgr_filsafat` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ktgr_filsafat`
--

INSERT INTO `ktgr_filsafat` (`id`, `id_buku`) VALUES
(10, 21),
(11, 43),
(12, 44);

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_komputer`
--

CREATE TABLE `ktgr_komputer` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ktgr_komputer`
--

INSERT INTO `ktgr_komputer` (`id`, `id_buku`) VALUES
(3, 25),
(4, 26),
(5, 27);

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_musik`
--

CREATE TABLE `ktgr_musik` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ktgr_musik`
--

INSERT INTO `ktgr_musik` (`id`, `id_buku`) VALUES
(1, 33);

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_religi`
--

CREATE TABLE `ktgr_religi` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ktgr_religi`
--

INSERT INTO `ktgr_religi` (`id`, `id_buku`) VALUES
(8, 19);

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_sains`
--

CREATE TABLE `ktgr_sains` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ktgr_sains`
--

INSERT INTO `ktgr_sains` (`id`, `id_buku`) VALUES
(3, 22),
(4, 23),
(5, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_sejarah`
--

CREATE TABLE `ktgr_sejarah` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ktgr_sejarah`
--

INSERT INTO `ktgr_sejarah` (`id`, `id_buku`) VALUES
(2, 31),
(3, 32);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `buku_id` int(11) DEFAULT 0,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_selesai_peminjaman` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `user_id`, `buku_id`, `tanggal_peminjaman`, `tanggal_selesai_peminjaman`) VALUES
(20, 3, 29, '2021-06-13', '2021-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '0',
  `no_ktp` varchar(255) NOT NULL DEFAULT '0',
  `no_telp` varchar(255) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `username`, `no_ktp`, `no_telp`, `password`) VALUES
(3, 'duilipaa', 'rzkydwii12@gmail.com', 'rizkydwiin', '1234567890', '082219738295', 'kikidwi123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ktgr_antropologi`
--
ALTER TABLE `ktgr_antropologi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_biografi`
--
ALTER TABLE `ktgr_biografi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_bisnis`
--
ALTER TABLE `ktgr_bisnis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_fiksi`
--
ALTER TABLE `ktgr_fiksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_filsafat`
--
ALTER TABLE `ktgr_filsafat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_religi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_komputer`
--
ALTER TABLE `ktgr_komputer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_musik`
--
ALTER TABLE `ktgr_musik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_religi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_religi`
--
ALTER TABLE `ktgr_religi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_religi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_sains`
--
ALTER TABLE `ktgr_sains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_religi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_sejarah`
--
ALTER TABLE `ktgr_sejarah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ktgr_antropologi`
--
ALTER TABLE `ktgr_antropologi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ktgr_biografi`
--
ALTER TABLE `ktgr_biografi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ktgr_bisnis`
--
ALTER TABLE `ktgr_bisnis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ktgr_fiksi`
--
ALTER TABLE `ktgr_fiksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ktgr_filsafat`
--
ALTER TABLE `ktgr_filsafat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ktgr_komputer`
--
ALTER TABLE `ktgr_komputer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ktgr_musik`
--
ALTER TABLE `ktgr_musik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ktgr_religi`
--
ALTER TABLE `ktgr_religi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ktgr_sains`
--
ALTER TABLE `ktgr_sains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ktgr_sejarah`
--
ALTER TABLE `ktgr_sejarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ktgr_antropologi`
--
ALTER TABLE `ktgr_antropologi`
  ADD CONSTRAINT `ktgr_antropologi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_biografi`
--
ALTER TABLE `ktgr_biografi`
  ADD CONSTRAINT `ktgr_biografi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_bisnis`
--
ALTER TABLE `ktgr_bisnis`
  ADD CONSTRAINT `ktgr_bisnis_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_fiksi`
--
ALTER TABLE `ktgr_fiksi`
  ADD CONSTRAINT `FK_ktgr_fiksi_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_filsafat`
--
ALTER TABLE `ktgr_filsafat`
  ADD CONSTRAINT `ktgr_filsafat_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_komputer`
--
ALTER TABLE `ktgr_komputer`
  ADD CONSTRAINT `ktgr_komputer_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_musik`
--
ALTER TABLE `ktgr_musik`
  ADD CONSTRAINT `ktgr_musik_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_religi`
--
ALTER TABLE `ktgr_religi`
  ADD CONSTRAINT `FK_ktgr_religi_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_sains`
--
ALTER TABLE `ktgr_sains`
  ADD CONSTRAINT `ktgr_sains_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_sejarah`
--
ALTER TABLE `ktgr_sejarah`
  ADD CONSTRAINT `ktgr_sejarah_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
