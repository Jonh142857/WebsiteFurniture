-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2017 at 07:50 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luanvan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cthd`
--

CREATE TABLE `cthd` (
  `DH_ID` int(11) NOT NULL,
  `SP_ID` int(11) NOT NULL,
  `SL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `cthd`
--

INSERT INTO `cthd` (`DH_ID`, `SP_ID`, `SL`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `DH_ID` int(11) NOT NULL,
  `DH_NGAYDAT` date NOT NULL,
  `DH_NGAYGIAO` date DEFAULT NULL,
  `DH_TRANGTHAI` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `U_ID` int(11) NOT NULL,
  `HTTT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`DH_ID`, `DH_NGAYDAT`, `DH_NGAYGIAO`, `DH_TRANGTHAI`, `U_ID`, `HTTT_ID`) VALUES
(1, '2017-03-01', '2017-03-20', 'Đã giao hàng và thanh toán', 2, 1),
(2, '2017-03-29', NULL, 'Chưa giao hàng', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hinhthucthanhtoan`
--

CREATE TABLE `hinhthucthanhtoan` (
  `HTTT_ID` int(11) NOT NULL,
  `HTTT_TEN` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `HTTT_NOIDUNG` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `hinhthucthanhtoan`
--

INSERT INTO `hinhthucthanhtoan` (`HTTT_ID`, `HTTT_TEN`, `HTTT_NOIDUNG`) VALUES
(1, 'COD', 'Thanh toán trực tiếp khi nhận hàng'),
(2, 'ACB', 'Thanh toán thông qua ngân hàng AC bank');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `KM_ID` int(11) NOT NULL,
  `KM_TEN` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `KM_NOIDUNG` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`KM_ID`, `KM_TEN`, `KM_NOIDUNG`) VALUES
(1, 'Không', 'Sản phẩm không khuyến mãi'),
(2, 'Xả hàng cuối năm', 'Giảm giá 90% cho tất cả các sản phẩm');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `LSP_ID` int(11) NOT NULL,
  `LSP_TEN` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`LSP_ID`, `LSP_TEN`) VALUES
(1, 'Bàn'),
(2, 'Ghế'),
(3, 'Giường');

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `NSX_ID` int(11) NOT NULL,
  `NSX_TEN` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `NSX_DIACHI` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `NSX_EMAIL` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `NSX_SDT` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`NSX_ID`, `NSX_TEN`, `NSX_DIACHI`, `NSX_EMAIL`, `NSX_SDT`) VALUES
(1, 'Công Ty TNHH Nguyễn Thanh', '431 Quốc lộ 1A, KP.5, P.Hiệp Bình Phước, Q.Thủ Đức TpHCM', 'nguyenthanh@gmail.com', '(84)54039400'),
(2, 'Công Ty TNHH OKC', '17A-63 Nguyễn Tất Thành, Quận Hải Châu, Đà Nắng', 'okc@gmail.com', '(84)5113822298'),
(3, 'Công Ty TNHH Nội Thất Phúc Thịnh', '31 Phạm Ngọc Thạch, Phường 6, QUận 3, TpHCM', 'ntphucthinh@gmail.com', '(08)626979506');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_MEMBER');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `SP_ID` int(11) NOT NULL,
  `SP_TEN` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `SP_GIA` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `SP_HINH` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `SP_QRCODE` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `SP_MOTA` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `LSP_ID` int(11) NOT NULL,
  `NSX_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`SP_ID`, `SP_TEN`, `SP_GIA`, `SP_HINH`, `SP_QRCODE`, `SP_MOTA`, `LSP_ID`, `NSX_ID`) VALUES
(1, 'Bàn 01', '5000000', '', '', 'Bàn gỗ thường', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sp_km`
--

CREATE TABLE `sp_km` (
  `SP_ID` int(11) NOT NULL,
  `KM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `sp_km`
--

INSERT INTO `sp_km` (`SP_ID`, `KM_ID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `ten` varchar(50) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `sdt` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `ten`, `diachi`, `sdt`) VALUES
(1, 'admin@gmail.com', '$2a$10$yOGm2mrm3QRZVKX22Pf10uQ1Jaa50pSl13DhFKmjxwsuFwxsM8zBu', 'Nguyễn Văn Huy', 'Cần Thơ', '01672462223'),
(2, 'member@gmail.com', '$2a$10$5MIqPvuceX3fCuelhoinQeCb7rTHOWtbx5T0tQQUXAFZvTFybpnHO', 'Nguyễn Ngọc Quyên', 'Cần Thơ', '0972558796');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cthd`
--
ALTER TABLE `cthd`
  ADD PRIMARY KEY (`DH_ID`,`SP_ID`,`SL`),
  ADD KEY `SP_ID` (`SP_ID`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`DH_ID`),
  ADD KEY `U_ID` (`U_ID`),
  ADD KEY `HTTT_ID` (`HTTT_ID`);

--
-- Indexes for table `hinhthucthanhtoan`
--
ALTER TABLE `hinhthucthanhtoan`
  ADD PRIMARY KEY (`HTTT_ID`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`KM_ID`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`LSP_ID`);

--
-- Indexes for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`NSX_ID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`SP_ID`),
  ADD KEY `LSP_ID` (`LSP_ID`),
  ADD KEY `NSX_ID` (`NSX_ID`);

--
-- Indexes for table `sp_km`
--
ALTER TABLE `sp_km`
  ADD PRIMARY KEY (`SP_ID`,`KM_ID`),
  ADD KEY `KM_ID` (`KM_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `DH_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hinhthucthanhtoan`
--
ALTER TABLE `hinhthucthanhtoan`
  MODIFY `HTTT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `KM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `LSP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `NSX_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `SP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cthd`
--
ALTER TABLE `cthd`
  ADD CONSTRAINT `cthd_ibfk_1` FOREIGN KEY (`DH_ID`) REFERENCES `donhang` (`DH_ID`),
  ADD CONSTRAINT `cthd_ibfk_2` FOREIGN KEY (`SP_ID`) REFERENCES `sanpham` (`SP_ID`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`HTTT_ID`) REFERENCES `hinhthucthanhtoan` (`HTTT_ID`),
  ADD CONSTRAINT `donhang_ibfk_3` FOREIGN KEY (`U_ID`) REFERENCES `user` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`LSP_ID`) REFERENCES `loaisanpham` (`LSP_ID`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`NSX_ID`) REFERENCES `nhasanxuat` (`NSX_ID`);

--
-- Constraints for table `sp_km`
--
ALTER TABLE `sp_km`
  ADD CONSTRAINT `sp_km_ibfk_1` FOREIGN KEY (`SP_ID`) REFERENCES `sanpham` (`SP_ID`),
  ADD CONSTRAINT `sp_km_ibfk_2` FOREIGN KEY (`KM_ID`) REFERENCES `khuyenmai` (`KM_ID`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
