-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: db_qltp
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `quanlitintuc`
--

DROP TABLE IF EXISTS `quanlitintuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quanlitintuc` (
  `IDTinTuc` int(11) NOT NULL AUTO_INCREMENT,
  `MaTin` int(11) NOT NULL,
  `TieuDe` varchar(200) NOT NULL,
  `BaiDang` text NOT NULL,
  `mota` text NOT NULL,
  `NgayDang` date NOT NULL,
  `images` text,
  PRIMARY KEY (`IDTinTuc`),
  UNIQUE KEY `IDTinTuc_UNIQUE` (`IDTinTuc`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quanlitintuc`
--

LOCK TABLES `quanlitintuc` WRITE;
/*!40000 ALTER TABLE `quanlitintuc` DISABLE KEYS */;
INSERT INTO `quanlitintuc` VALUES (1,1,'cà phê','Câu chuyện xảy ra vào thập niên 80 thế kỷ trước, khi ông còn là một nhà thiết kế game trẻ tuổi và vừa gia nhập Tecmo, một công ty phát triển game lớn của Nhật Bản. Chỉ sau vài tuần làm việc, nhóm của Tabata đã bị giám đốc của Tecmo lúc bấy giờ là Yoshihito Kakihara triệu tập và khiển trách.','cà phê trong nước và thông tin tiêu dùng','2016-02-02','img1.jpg'),(2,2,'nông sản','guyên nhân là vì những ý kiến đánh giá về Rygar (tựa game do công ty sản xuất dành cho hệ máy Famicom – tức điện tử 4 nút) đi theo chiều hướng rất tệ. Nhóm phát triển của Tabata khi đó đã lập trình thiếu sót phần lưu game. Điều này khiến cho khách hàng phải bật máy liên tục (ngay cả những lúc không dùng) để lưu giữ quá trình chơi. Để giải quyết khủng hoảng này, Tecmo đã tổ chức nhiều cuộc họp báo để xin lỗi khách hàng. Hajime Tabata vẫn nhớ mãi cảnh tượng ban giám đốc và toàn bộ nhóm phát triển Tecmo phải quỳ gối xuống sàn để cầu xin sự tha thứ từ phía các nhà bán l','Thị Trường nông sản trong ngoài nước','2016-03-03','img1.jpg'),(3,3,'Tài chính','Dịch vụ thám tử chuyên nghiệp nhất tại Việt Nam','Dịch vụ thám tử chuyên nghiệp nhất tại Việt Nam','2016-03-03','img3.jpg'),(4,4,'Đồ chơi','hop đồ chơi và đồ dùng cho bé BabyBorn.vn trân trọng gửi tới quý khách hàng chương trình ưu đãi mùa giáng sinh năm nay✨✨✨ ','hop đồ chơi và đồ dùng cho bé','2016-02-06','img3.jpg'),(5,5,'Tiền tệ','hop đồ chơi và đồ dùng cho bé BabyBorn.vn trân trọng gửi tới quý khách hàng chương trình ưu đãi mùa giáng sinh năm nay✨✨✨ ','hop đồ chơi và đồ dùng cho bé BabyBorn.vn trân trọng gửi tới quý khách hàng chương trình ưu đãi mùa giáng sinh năm nay✨✨✨ ','2016-09-09','img3.jpg');
/*!40000 ALTER TABLE `quanlitintuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanpham` (
  `idSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(45) DEFAULT NULL,
  `MoTa` varchar(3000) DEFAULT NULL,
  `Image` text,
  `ChiTietSanPham` varchar(3000) DEFAULT NULL,
  `GiaSanPham` double NOT NULL,
  PRIMARY KEY (`idSanPham`),
  UNIQUE KEY `idSanPham_UNIQUE` (`idSanPham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'Rau Xanh','tên gọi chung của các loại thực vật có thể ăn được dưới dạng lá là phổ biến tuy trong thực tế có nhiều loại ăn hoa, củ, quả cũng có thể gộp chung vào các loại rau.','img8.jpg','Có rất nhiều loại rau ăn lá trong đó có thể kể đến rau ngót Sauropus androgynus, rau dền Amaranthus viridus, rau muống Ipomoea aquatica, rau cần nước Oenanthe javanica, rau lang Ipomoea batatan v.v.',0),(2,'Củ cài','tên gọi chung của các loại thực vật có thể ăn được dưới dạng lá là phổ biến tuy trong thực tế có nhiều loại ăn hoa, củ, quả cũng có thể gộp chung vào các loại rau.','img3.jpg','Có rất nhiều loại rau ăn lá trong đó có thể kể đến rau ngót Sauropus androgynus, rau dền Amaranthus viridus, rau muống Ipomoea aquatica, rau cần nước Oenanthe javanica, rau lang Ipomoea batatan v.v.',0),(3,'Rau Muống','tên gọi chung của các loại thực vật có thể ăn được dưới dạng lá là phổ biến tuy trong thực tế có nhiều loại ăn hoa, củ, quả cũng có thể gộp chung vào các loại rau.','img14.jpg','Có rất nhiều loại rau ăn lá trong đó có thể kể đến rau ngót Sauropus androgynus, rau dền Amaranthus viridus, rau muống Ipomoea aquatica, rau cần nước Oenanthe javanica, rau lang Ipomoea batatan v.v.',0),(4,'Rau Cải','tên gọi chung của các loại thực vật có thể ăn được dưới dạng lá là phổ biến tuy trong thực tế có nhiều loại ăn hoa, củ, quả cũng có thể gộp chung vào các loại rau.','img5.jpg','Có rất nhiều loại rau ăn lá trong đó có thể kể đến rau ngót Sauropus androgynus, rau dền Amaranthus viridus, rau muống Ipomoea aquatica, rau cần nước Oenanthe javanica, rau lang Ipomoea batatan v.v.',0),(5,'Rau Mồng Tơi','tên gọi chung của các loại thực vật có thể ăn được dưới dạng lá là phổ biến tuy trong thực tế có nhiều loại ăn hoa, củ, quả cũng có thể gộp chung vào các loại rau.','img13.jpg','Có rất nhiều loại rau ăn lá trong đó có thể kể đến rau ngót Sauropus androgynus, rau dền Amaranthus viridus, rau muống Ipomoea aquatica, rau cần nước Oenanthe javanica, rau lang Ipomoea batatan v.v.',0),(6,'Rau Diếp Cá','tên gọi chung của các loại thực vật có thể ăn được dưới dạng lá là phổ biến tuy trong thực tế có nhiều loại ăn hoa, củ, quả cũng có thể gộp chung vào các loại rau.','img7.jpg','Có rất nhiều loại rau ăn lá trong đó có thể kể đến rau ngót Sauropus androgynus, rau dền Amaranthus viridus, rau muống Ipomoea aquatica, rau cần nước Oenanthe javanica, rau lang Ipomoea batatan v.v.',0),(7,'Rau Súp Lơ','tên gọi chung của các loại thực vật có thể ăn được dưới dạng lá là phổ biến tuy trong thực tế có nhiều loại ăn hoa, củ, quả cũng có thể gộp chung vào các loại rau.','img4.jpg','Có rất nhiều loại rau ăn lá trong đó có thể kể đến rau ngót Sauropus androgynus, rau dền Amaranthus viridus, rau muống Ipomoea aquatica, rau cần nước Oenanthe javanica, rau lang Ipomoea batatan v.v.',0),(8,'Củ Kiệu','tên gọi chung của các loại thực vật có thể ăn được dưới dạng lá là phổ biến tuy trong thực tế có nhiều loại ăn hoa, củ, quả cũng có thể gộp chung vào các loại rau.','img10.jpg','Có rất nhiều loại rau ăn lá trong đó có thể kể đến rau ngót Sauropus androgynus, rau dền Amaranthus viridus, rau muống Ipomoea aquatica, rau cần nước Oenanthe javanica, rau lang Ipomoea batatan v.v.',0),(9,'Củ Quả','Là các loại củ quả được mọc ra từ cành hoặc là rễ','img1.jpg',NULL,0);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `IdUser` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Pwd` varchar(45) NOT NULL,
  `Quyen` int(11) NOT NULL,
  `FullName` varchar(45) NOT NULL,
  `BirthDay` datetime DEFAULT NULL,
  `Gender` bit(2) DEFAULT NULL,
  `Note` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdUser`),
  UNIQUE KEY `iduser_UNIQUE` (`IdUser`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'danhtp','danhtp@gmail.com','12345',1,'Phước Danh','1992-08-20 00:00:00','\0',NULL),(2,'tunx','tunx@gmail.com','12345',0,'Xuân Tú','2016-10-19 18:41:29','',NULL),(5,'tuannc','timeless194@gmail.com','123123',1,'Nguyễn Chí Tuấn','2016-10-19 19:03:30','',NULL),(6,'winbiru','thangnxpk00638@fpt.edu.vn','12345',0,'thangtra',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-02 20:43:11
