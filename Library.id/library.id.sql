-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table library.id.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table library.id.admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `username`, `password`) VALUES
	(1, 'admin', 'admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table library.id.buku
CREATE TABLE IF NOT EXISTS `buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) NOT NULL DEFAULT '0',
  `judul` varchar(255) NOT NULL DEFAULT '0',
  `pengarang` varchar(255) NOT NULL DEFAULT '0',
  `preview` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Dumping data for table library.id.buku: ~0 rows (approximately)
/*!40000 ALTER TABLE `buku` DISABLE KEYS */;
/*!40000 ALTER TABLE `buku` ENABLE KEYS */;

-- Dumping structure for table library.id.ktgr_antropologi
CREATE TABLE IF NOT EXISTS `ktgr_antropologi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ktgr_fiksi_buku` (`id_buku`),
  CONSTRAINT `ktgr_antropologi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table library.id.ktgr_antropologi: ~0 rows (approximately)
/*!40000 ALTER TABLE `ktgr_antropologi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ktgr_antropologi` ENABLE KEYS */;

-- Dumping structure for table library.id.ktgr_biografi
CREATE TABLE IF NOT EXISTS `ktgr_biografi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ktgr_fiksi_buku` (`id_buku`),
  CONSTRAINT `ktgr_biografi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table library.id.ktgr_biografi: ~0 rows (approximately)
/*!40000 ALTER TABLE `ktgr_biografi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ktgr_biografi` ENABLE KEYS */;

-- Dumping structure for table library.id.ktgr_bisnis
CREATE TABLE IF NOT EXISTS `ktgr_bisnis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ktgr_fiksi_buku` (`id_buku`),
  CONSTRAINT `ktgr_bisnis_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table library.id.ktgr_bisnis: ~0 rows (approximately)
/*!40000 ALTER TABLE `ktgr_bisnis` DISABLE KEYS */;
/*!40000 ALTER TABLE `ktgr_bisnis` ENABLE KEYS */;

-- Dumping structure for table library.id.ktgr_fiksi
CREATE TABLE IF NOT EXISTS `ktgr_fiksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ktgr_fiksi_buku` (`id_buku`),
  CONSTRAINT `FK_ktgr_fiksi_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table library.id.ktgr_fiksi: ~0 rows (approximately)
/*!40000 ALTER TABLE `ktgr_fiksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ktgr_fiksi` ENABLE KEYS */;

-- Dumping structure for table library.id.ktgr_filsafat
CREATE TABLE IF NOT EXISTS `ktgr_filsafat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ktgr_religi_buku` (`id_buku`),
  CONSTRAINT `ktgr_filsafat_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table library.id.ktgr_filsafat: ~0 rows (approximately)
/*!40000 ALTER TABLE `ktgr_filsafat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ktgr_filsafat` ENABLE KEYS */;

-- Dumping structure for table library.id.ktgr_komputer
CREATE TABLE IF NOT EXISTS `ktgr_komputer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ktgr_fiksi_buku` (`id_buku`),
  CONSTRAINT `ktgr_komputer_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table library.id.ktgr_komputer: ~0 rows (approximately)
/*!40000 ALTER TABLE `ktgr_komputer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ktgr_komputer` ENABLE KEYS */;

-- Dumping structure for table library.id.ktgr_musik
CREATE TABLE IF NOT EXISTS `ktgr_musik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ktgr_religi_buku` (`id_buku`),
  CONSTRAINT `ktgr_musik_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table library.id.ktgr_musik: ~0 rows (approximately)
/*!40000 ALTER TABLE `ktgr_musik` DISABLE KEYS */;
/*!40000 ALTER TABLE `ktgr_musik` ENABLE KEYS */;

-- Dumping structure for table library.id.ktgr_religi
CREATE TABLE IF NOT EXISTS `ktgr_religi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ktgr_religi_buku` (`id_buku`),
  CONSTRAINT `FK_ktgr_religi_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table library.id.ktgr_religi: ~0 rows (approximately)
/*!40000 ALTER TABLE `ktgr_religi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ktgr_religi` ENABLE KEYS */;

-- Dumping structure for table library.id.ktgr_sains
CREATE TABLE IF NOT EXISTS `ktgr_sains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ktgr_religi_buku` (`id_buku`),
  CONSTRAINT `ktgr_sains_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table library.id.ktgr_sains: ~0 rows (approximately)
/*!40000 ALTER TABLE `ktgr_sains` DISABLE KEYS */;
/*!40000 ALTER TABLE `ktgr_sains` ENABLE KEYS */;

-- Dumping structure for table library.id.ktgr_sejarah
CREATE TABLE IF NOT EXISTS `ktgr_sejarah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ktgr_fiksi_buku` (`id_buku`),
  CONSTRAINT `ktgr_sejarah_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table library.id.ktgr_sejarah: ~0 rows (approximately)
/*!40000 ALTER TABLE `ktgr_sejarah` DISABLE KEYS */;
/*!40000 ALTER TABLE `ktgr_sejarah` ENABLE KEYS */;

-- Dumping structure for table library.id.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '0',
  `no_ktp` varchar(255) NOT NULL DEFAULT '0',
  `no_telp` varchar(255) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table library.id.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
